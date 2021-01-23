import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme/home_res.dart';
import '../home_state.dart';

class ChartWidget extends StatelessWidget {
  final HomeState state;

  const ChartWidget(this.state, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      getSeries(),
      animate: true,
      dateTimeFactory: const charts.UTCDateTimeFactory(),
      domainAxis: const charts.EndPointsTimeAxisSpec(
          tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
        minute: charts.TimeFormatterSpec(
          format: HomeRes.timeFormat,
          transitionFormat: HomeRes.transitionFormat,
        ),
      )),
      behaviors: [
        charts.SeriesLegend(showMeasures: true),
        charts.PanAndZoomBehavior(),
      ],
    );
  }

  List<String> getLabels() =>
      [HomeRes.xAccLabel, HomeRes.yAccLabel, HomeRes.zAccLabel];

  List<charts.Series<_Accuracy, DateTime>> getSeries() {
    var axisAccuracies = state.axisAccuracies();
    var labels = getLabels();
    return [
      for (int i = 0; i < axisAccuracies.length; i++)
        seriesOf(labels[i], axisAccuracies[i])
    ];
  }

  charts.Series<_Accuracy, DateTime> seriesOf(
      String id, Map<String, double> axis) {
    return charts.Series<_Accuracy, DateTime>(
      id: id,
      domainFn: (_Accuracy acc, _) => acc.datetime,
      measureFn: (_Accuracy acc, _) => acc.value,
      data: [
        for (final e in axis.entries) _Accuracy(DateTime.parse(e.key), e.value)
      ],
      // seriesColor: charts.Color.fromHex(code: colorHex),
    );
  }
}

class _Accuracy {
  final DateTime datetime;
  final double value;

  _Accuracy(this.datetime, this.value);
}
