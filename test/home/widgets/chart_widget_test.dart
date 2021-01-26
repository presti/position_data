/// Sample widget test for the chart
import 'dart:convert' as convert;
import 'dart:io';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:position_data/data/position.dart';
import 'package:position_data/data/position_dto.dart';
import 'package:position_data/data/position_repository.dart';
import 'package:position_data/data/position_service.dart';
import 'package:position_data/home/home_state.dart';
import 'package:position_data/home/wigets/chart_widget.dart';
import 'package:position_data/utils/functional/mayfail.dart';

void main() {
  _testInitSample();
}

/// Sample test showing Widget testing.
void _testInitSample() {
  group('Init', () {
    testWidgets('show data', (WidgetTester tester) async {
      // This is not strictly a Widget test as, instead of creating a
      // List<Position>, we are using PositionRepository with a
      // Fake Service to generate the List<Position>.
      // A unit test should test that the repository created the
      // correct data based on what it receives from the service.
      String path = 'test/test_resources/positions.json';
      File file;
      String fileString;
      try {
        file = File('../$path');
        fileString = file.readAsStringSync();
      } on FileSystemException {
        file = File(path);
        fileString = file.readAsStringSync();
      }
      ;
      Map<String, dynamic> json =
          convert.jsonDecode(fileString) as Map<String, dynamic>;
      PositionDto dto = PositionDto.fromJson(json);
      PositionService service = _FakePositionService(dto);
      PositionRepository repository = PositionRepository(service);
      MayFail<List<Position>, Failure> positions =
          await repository.getNextPositions().first;

      await positions.on(
        onSuccess: (pos) async {
          Widget widget = ChartWidget(HomeState(
            status: const DataStatus.done(),
            isShowingMap: false,
            positions: pos,
          ));
          await tester.pumpWidget(_buildTestableWidget(widget));
          expect(find.byType(ChartWidget), findsOneWidget);
          charts.TimeSeriesChart widgetFound = find
              .byType(charts.TimeSeriesChart)
              .evaluate()
              .first
              .widget as charts.TimeSeriesChart;
          // Here we just check that the sizes are correct, but we
          // should check that the values of the data are correct.
          var series = widgetFound.seriesList;
          var axis = 3;
          expect(series.length, axis);
          for (final s in series) {
            expect(s.data.length, pos.length);
          }
        },
        onFailure: (f) => fail('should not happen'),
      );
    });
  });
}

Widget _buildTestableWidget(Widget widget) {
  return MaterialApp(home: Scaffold(body: widget));
}

class _FakePositionService implements PositionService {
  final PositionDto dto;

  _FakePositionService(this.dto);

  @override
  Future<MayFail<PositionDto, Failure>> get(int page) async => Success(dto);
}
