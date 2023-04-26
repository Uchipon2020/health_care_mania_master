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
      1 : widget.model.height_1,
      2 : widget.model.weight_2,
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
      24 : widget.model.on_the_day_24,
      18 : widget.model.ldl_18,
      19 : widget.model.hdl_19,
      20 : widget.model.neutral_fat_20,
      21 : widget.model.blood_glucose_21,
      22 : widget.model.hA1c_22,
      23 : widget.model.ecg_23,
      26 : widget.model.sugar_26,
      25 : widget.model.urine_25,

    //
       3 : widget.model.waist_3,
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('appBarTitle'),
      ),
    body: ListView(
      children: [
      Text('身長${modelViews[1]!}'),
        Text('体重${modelViews[2]!}'),
        Text('体重${modelViews[3]!}'),
        Text('体重${modelViews[4]!}'),
        Text('体重${modelViews[5]!}'),
        Text('体重${modelViews[6]!}'),
        Text('体重${modelViews[7]!}'),
        Text('体重${modelViews[8]!}'),
        Text('体重${modelViews[9]!}'),
        Text('体重${modelViews[10]!}'),
        Text('体重${modelViews[11]!}'),
      ]
    ),
    );
  }
}