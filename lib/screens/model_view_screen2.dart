import 'package:flutter/material.dart';

import '../models/model.dart';

class ModelViewScreen2 extends StatefulWidget {
  final String appBarTitle;
  final Model model;
  const ModelViewScreen2(
      {Key? key, required this.appBarTitle, required this.model})
      : super(key: key);
  @override
  State<ModelViewScreen2> createState() => _ModelViewScreen2State();
}

class _ModelViewScreen2State extends State<ModelViewScreen2>{
  static final _priorities = ['定期健康診断', '人間ドック', '独自検査'];
  late Map<int,String> modelViews;
  @override
  void initState() {
    super.initState();
    modelViews = {
      99 : _priorities[widget.model.priority],
      1 : widget.model.height_1,
      2 : widget.model.weight_2,
      3 : widget.model.waist_3,
      4 : widget.model.right_eye_4,
      5 : widget.model.left_eye_5,
      6 : widget.model.hearing_right_1000_6,
      7 : widget.model.hearing_left_1000_7,
      8 : widget.model.hearing_right_4000_8,
      9 : widget.model.hearing_left_4000_9,
      10 : widget.model.x_ray_10,
      11 : widget.model.low_blood_pressure_11,
      12 : widget.model.high_blood_pressure_12,
      13 : widget.model.red_blood_13,
      14 : widget.model.hemoglobin_14,
      15 : widget.model.got_15,
      16 : widget.model.gpt_16,
      17 : widget.model.gtp_17,
      18 : widget.model.ldl_18,
      19 : widget.model.hdl_19,
      20 : widget.model.neutral_fat_20,
      21 : widget.model.blood_glucose_21,
      22 : widget.model.hA1c_22,
      23 : widget.model.ecg_23,
      //24
      25 : widget.model.urine_25,
      26 : widget.model.sugar_26,
      27 : widget.model.correctedEyesightRight_27,
      28 : widget.model.correctedEyesightLeft_28,
      29 : widget.model.lateBlood_29,
      30 : widget.model.bloodInTheStool_30,
      31 : widget.model.totalProtein_31,
      32 : widget.model.albumin_32, //32
      33 : widget.model.totalBilirubin_33,
      34 : widget.model.alp_34,
      35 : widget.model.totalCholesterol_35,
      36 : widget.model.uricAcid_36,
      37 : widget.model.ureaNitrogen_37,
      38 : widget.model.creatinine_38,
      39 : widget.model.amylase_39,
      40 : widget.model.whiteBloodCell_40,
      41 : widget.model.hematocrit_41,
      42 : widget.model.mcv_42,
      43 : widget.model.mch_43,
      44 : widget.model.mchc_44,
      45 : widget.model.serumIron_45,
      46 : widget.model.platelet_46,
      47 : widget.model.internal_47,};
  }


  @override
  Widget build(BuildContext context){
    for (int i=0 ; i < 99; i++){
      if (modelViews[i] == ''){
        modelViews[i] = ' -- ';
      };
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.appBarTitle} : ${widget.model.on_the_day_24}実施分'),
      ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Text('検査種別: ${modelViews[99]!}'),
        Text('身長: ${modelViews[1]!}cm'),
          Text('体重: ${modelViews[2]!}kg'),
          Text('腹囲: ${modelViews[3]!}cm'),
          Row(
            children: [
              Text('右目（裸眼）：${modelViews[4]!}'),
              Text('/ 左目（裸眼）：${modelViews[5]!}'),
            ],
          ),
          Row(
            children: [
              Text('右目（矯正）：${modelViews[6]!}'),
              Text('/ 左目（矯正）：${modelViews[7]!}'),
            ],
          ),

          Row(
            children: [
              Text('右聴力 1000Mz：${modelViews[8]!}'),
              Text('/ 左聴力 1000Mz：${modelViews[9]!}'),
            ],
          ),

          Row(
            children: [
              Text('右聴力 4000Mz：${modelViews[10]!}'),
              Text('/ 左聴力 4000Mz：${modelViews[11]!}'),
            ],
          ),

          Text('血圧（下・拡張期）: ${modelViews[12]!}mmHg'),
          Text('血圧（上・収縮機）: ${modelViews[13]!}mmHg'),
          Text('X-線検査：${modelViews[14]!}'),
          Text('心電図検査所見：${modelViews[15]!}'),
          Text('内科診察所見：${modelViews[16]!}'),
          Text('総蛋白：${modelViews[17]!}g/dL'),
          Text('アルブミン：${modelViews[18]!} g/dL'),
          Text('総ビリルビン：${modelViews[19]!} mg/dL'),
          Text('GOT（ALT)：${modelViews[20]!} U/L'),
          Text('GPT（AST)：${modelViews[21]!} U/L'),
          Text('ALP：${modelViews[22]!} U/L'),
          Text('γ-GTP：${modelViews[23]!} U/L'),
          Text('ALP：${modelViews[25]!} mg/dL'),

        ]
      ),
    ),
    );
  }
}