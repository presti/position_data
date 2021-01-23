import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:position_data/data/position.dart';
import 'package:position_data/data/position_repository.dart';
import 'package:position_data/home/wigets/chart_widget.dart';
import 'package:position_data/home/wigets/map_widget.dart';
import 'package:position_data/main.dart' as app;
import 'package:position_data/providers/injector.dart';
import 'package:position_data/theme/home_res.dart';
import 'package:position_data/utils/functional/mayfail.dart';

// test with
// flutter drive --driver=test_driver/main_test.dart --target=integration_test/home_test.dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Simple integration test showing routing.
  testWidgets('home starts in chart, we can go to map and back to chart',
      (WidgetTester tester) async {
    InjectorConfig.i = _TestInjectorConfig();
    app.main();
    await tester.pumpAndSettle();

    // We start in chart.
    var chartFinder = find.byType(ChartWidget);
    expect(chartFinder, findsOneWidget);
    Finder mapIconFinder = find.byIcon(HomeRes.mapIcon);

    // We go to map.
    expect(mapIconFinder, findsOneWidget);
    await tester.tap(mapIconFinder);
    await tester.pump();
    Finder chartIconFinder = find.byIcon(HomeRes.chartIcon);
    expect(chartIconFinder, findsOneWidget);
    expect(find.byType(MapWidget), findsOneWidget);

    // Back to chart.
    await tester.tap(chartIconFinder);
    await tester.pump();
    expect(chartFinder, findsOneWidget);
    expect(mapIconFinder, findsOneWidget);
  });
}

/// Config for injecting test dependencies.
class _TestInjectorConfig extends InjectorConfig {
  @override
  void putDependencies() {
    putDependency<PositionRepository>(_FakePositionRepository());
  }
}

class _FakePositionRepository implements PositionRepository {
  @override
  Stream<MayFail<List<Position>, Failure>> getNextPositions() async* {
    yield const Success([]);
  }
}
