import 'package:envoymachaant/components/section.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  final List<Sector> sectors;

  const PieChartWidget(this.sectors);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: _chartSections(sectors),
        centerSpaceRadius: 48.0,
      ),
    );
  }

  List<PieChartSectionData> _chartSections(List<Sector> sectors) {
    final List<PieChartSectionData> list = [];
    for (var sector in sectors) {
      const double radius = 4.0;
      final data = PieChartSectionData(
        color: sector.color,
        value: sector.value,
        radius: radius,
        title: '',
      );
      list.add(data);
    }
    return list;
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: PieChart(
        PieChartData(
          centerSpaceRadius: 5,
          borderData: FlBorderData(show: false),
          sectionsSpace: 2,
          sections: [
            PieChartSectionData(value: 35, color: Colors.purple, radius: 100),
            PieChartSectionData(value: 40, color: Colors.amber, radius: 100),
            PieChartSectionData(value: 55, color: Colors.green, radius: 100),
            PieChartSectionData(value: 70, color: Colors.orange, radius: 100),
          ],
        ),
      ),
    );
  }
}
