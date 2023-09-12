import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class Graph1 extends StatefulWidget {
  List<Model>? modelWeight;
  List<Model>? modelList;
  Graph1( {required this.modelWeight , Key? key}) : super(key: key);

  @override
  State<Graph1> createState() => _Graph1State();
}

class _Graph1State extends State<Graph1> {
  late FlTitlesData _titles;
  final TextStyle _labelStyle =
  const TextStyle(fontSize: 16, fontWeight: FontWeight.w800);
  final TextStyle _titleStyle =
  const TextStyle(fontSize: 24, fontWeight: FontWeight.w800);

  // modelWeightリストをMapのリストに変換
  late List<dynamic> nonNullBValues;

  void _initChartTitle() {
    _titles = FlTitlesData(
      topTitles: AxisTitles(
          axisNameWidget: Text(
            "2021 Tokyo Avg Temperature",
            style: _titleStyle,
          ),
          axisNameSize: 48),
      rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          )),
      bottomTitles: AxisTitles(
        sideTitles: _bottomTitles(),
        axisNameWidget: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "month",
            style: _labelStyle,
          ),
        ),
      ),
      leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) => Text(
              value.toInt().toString(),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          axisNameWidget: Text(
            "temperature",
            style: _labelStyle,
          ),
          axisNameSize: 32),
    );
  }

  SideTitles _bottomTitles() => SideTitles(
      showTitles: true,
      reservedSize: 24,
      interval: 1,
      getTitlesWidget: (month, meta) {
        const style = TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        );
        String text;

        if (month.toInt() < 1 || month.toInt() > 12) {
          text = "";
        } else {
          text = "${month.toInt()}";
        }

        return SideTitleWidget(
          axisSide: meta.axisSide,
          space: 10,
          child: Text(
            text,
            style: style,
          ),
        );
      });

  @override
  void initState() {
    super.initState();
    _initChartTitle();
    nonNullBValues = widget.modelWeight
        ?.map((model) => model.weight_2)
        .where((weight) => weight != null)// Modelクラスのweightプロパティを取得
    .toList() ?? [];

  }

  @override
  Widget build(BuildContext context) {
    nonNullBValues
        .where((map) => map['weight'] != null)
        .map((map) => map['weight'])
        .toList();

    // nonNullBValuesをFlSpotのリストに変換
    List<FlSpot> flSpotList = [];
    for (int i = 0; i < nonNullBValues.length; i++) {
    // X軸（時間など）を指定する場合、iを使用するか、適切な値を設定します
    double xValue = i.toDouble();
    // Y軸（'weight' データ）を指定
    double yValue = nonNullBValues[i].toDouble(); // もしくは必要な型変換を行う

    // FlSpotを作成してリストに追加
    flSpotList.add(FlSpot(xValue, yValue));
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text("Line Chart"),
      ),
      body: Center(
    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, right: 32),
              height: 300,
              width: double.infinity,
              child: LineChart(LineChartData(
                  backgroundColor: Colors.grey[200],
                  titlesData: _titles,
                  minX: 1,
                  maxX: 12,
                  minY: 0,
                  maxY: 30,
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      color: Colors.green[400],
                      barWidth: 4,
                      dotData: FlDotData(show: true),
                      spots: flSpotList,
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

