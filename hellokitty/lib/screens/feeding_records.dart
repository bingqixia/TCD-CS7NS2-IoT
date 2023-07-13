import 'package:flutter/material.dart';
import 'package:hellokitty/components/line_chart.dart';
import '../components/custom_appbar.dart';
import '../components/path_config.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class FeedingRecords extends StatelessWidget {
  const FeedingRecords({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      LinearPoint(0, "Mon", 5),
      LinearPoint(1, "Tue", 15),
      LinearPoint(2, "Wed", 34),
      LinearPoint(3, "Thu", 41),
      LinearPoint(4, "Fri", 22),
      LinearPoint(5, "Sat", 45),
      LinearPoint(6, "Sun", 35),
    ];

    List<charts.Series<dynamic, num>> seriesList = [
      charts.Series<LinearPoint, int>(
        id: 'Points',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearPoint points, _) => points.index,
        measureFn: (LinearPoint points, _) => points.y,
        data: data,
      )
    ];

    return Scaffold(
      appBar: CustomAppBar(
        backgroudColor: Colors.black,
        title: "Feeding Records",
        height: 40,
        iconPath: IconPath.customOptions[3][1],
      ),
      body: Container(
        padding: const EdgeInsets.only(
            top: 50.0, left: 30.0, right: 20.0, bottom: 50.0),
        child: 
        LineChart(seriesList),
      ),
    );
  }
}
