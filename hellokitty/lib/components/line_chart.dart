import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LineChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;

  LineChart(this.seriesList, {this.animate = true});

  /// Creates a [LineChart] with sample data and no transition.
  factory LineChart.withSampleData() {
    return LineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearPoint, int>> _createSampleData() {
    final data = [
      LinearPoint(0, "Mon", 5),
      LinearPoint(1, "Tue", 25),
      LinearPoint(2, "Wed", 100),
      LinearPoint(3, "Thu", 75),
    ];

    return [
      charts.Series<LinearPoint, int>(
        id: 'Points',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearPoint point, _) => point.index,
        measureFn: (LinearPoint point, _) => point.y,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearPoint {
  final int index;
  final String x;
  final int y;

  LinearPoint(this.index, this.x, this.y);
}
