import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class Graph1 extends StatefulWidget {
  List<Model>? modelList;
  Graph1({required this.modelList, Key? key}) : super(key: key);

  @override
  State<Graph1> createState() => _Graph1State();
}

class _Graph1State extends State<Graph1> {
  late FlTitlesData _titles;
  final TextStyle _labelStyle =
  const TextStyle(fontSize: 13, fontWeight: FontWeight.w800);
  final TextStyle _titleStyle =
  const TextStyle(fontSize: 20, fontWeight: FontWeight.w800);

  void _initChartTitle() {
    _titles = FlTitlesData(
      topTitles: AxisTitles(
          axisNameWidget: Text(
            "Your Weight Data",
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
            "登録日",
            style: _labelStyle,
          ),
        ),
      ),
      leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, titleMeta) {
              return Text(
                value.toStringAsFixed(0),
                style: const TextStyle(
                  color: Colors.black, // ラベルのテキスト色を指定
                  fontSize: 12, // ラベルのフォントサイズを指定
                ),); // X軸のラベル // Y軸のラベルを整数にフォーマット
            },
          ),
          axisNameWidget: Text(
            "Weight(kg)",
            style: _labelStyle,
          ),
          axisNameSize: 32),
    );
  }

  SideTitles _bottomTitles() => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: (value, _) {
        return Text(
          value.toStringAsFixed(0),
          style: const TextStyle(
            color: Colors.black, // ラベルのテキスト色を指定
            fontSize: 12, // ラベルのフォントサイズを指定
          ),); // X軸のラベルを整数にフォーマット
      });

  @override
  void initState() {
    super.initState();
    _initChartTitle();
  }

  @override
  Widget build(BuildContext context) {
    List<int>? weightDataList = widget.modelList
        ?.where((model) => model.weight_2.isNotEmpty)
        .map((model) => int.tryParse(model.weight_2) ?? 0)
        .toList();

    List<FlSpot> flSpotList = [];
    for (int i = 0; i < weightDataList!.length; i++) {
      double yValue = weightDataList[i].toDouble();

      flSpotList.add(FlSpot(i.toDouble(), yValue));
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
                  minX: 0, // 最小のX軸値
                  maxX: weightDataList.length - 1.toDouble(), // 最大のX軸値
                  minY: 0, // 最小のY軸値
                  maxY: weightDataList.reduce((a, b) => a > b ? a : b).toDouble(), // 最大のY軸値
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
  }}