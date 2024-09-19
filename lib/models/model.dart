
//定義クラス。同時に、アプリケーション稼働時にデータが補完させる場所。
//アプリを再度使う場合には、また初期化処理を入れておかないと、表記の保証ができない。
import 'package:flutter/foundation.dart';


class Model {
  int? _id;
  String? _date; //更新日
  int? _priority; //定期・ドッグフラグ
  String? _1_height; //身長 *
  static bool isHeightRedFlag = false;
  static bool isHeightBlueFlag = false;
  static const double MAX_HEIGHT = 250.0;
  static const double MIN_HEIGHT = 50.0;
  String? _2_weight; //体重 *
  String? _3_waist; //腹囲 *
  String? _4_right_eye; //右視力 *
  String? _5_left_eye; //左視力 *
  String? _6_hearing_right_1000; //聴力右1000Hz *
  String? _7_hearing_left_1000; // *
  String? _8_hearing_right_4000; //*
  String? _9_hearing_left_4000; //*
  String? _10_x_ray; //レントゲン
  String? _11_low_blood_pressure; //下血圧 *
  static bool isLowBloodRedFlag = false;
  static bool isLowBloodBlueFlag = false;
  static const double MAX_LOWBLOOD = 1000.0;
  static const double MIN_LOWBLOOD = 70.0;

  String? _12_high_blood_pressure; //上血圧 *
  static bool isHighBloodRedFlag = false;
  static bool isHighBloodBlueFlag = false;
  static const double MAX_HIGHBLOOD = 130;
  static const double MIN_HIGHBLOOD = 0;

  String? _13_red_blood; //貧血検査・赤血球数 *
  static bool isRedBloodRedFlag = false;
  static bool isRedBloodBlueFlag = false;
  static const double MAX_REDBLOOD = 570;
  static const double MIN_REDBLOOD = 430;

  String? _14_hemoglobin; //貧血検査・血色素量 *
  static bool isHemoglobinRedFlag = false;
  static bool isHemoglobinBlueFlag = false;
  static const double MAX_HEMOGLOBIN = 16.3;
  static const double MIN_HEMOGLOBIN = 13.1;

  String? _15_got; //肝機能検査 *
  static bool isGotRedFlag = false;
  static bool isGotBlueFlag = false;
  static const double MAX_GOT = 30;
  static const double MIN_GOT = 0;

  String? _16_gpt; //肝機能検査 *
  static bool isGptRedFlag = false;
  static bool isGptBlueFlag = false;
  static const double MAX_GPT = 30;
  static const double MIN_GPT = 0;

  String? _17_gtp; //ガンマ  *
  static bool isgtpRedFlag = false;
  static bool isgtpBlueFlag = false;
  static const double MAX_GTP = 50;
  static const double MIN_GTP = 0;

  String? _18_ldl; //血中資質検査 *
  static bool isLdlRedFlag = false;
  static bool isLdlBlueFlag = false;
  static const double MAX_LDL = 245;
  static const double MIN_LDL = 115;

  String? _19_hdl; //*
  static bool isHdlRedFlag = false;
  static bool isHdlBlueFlag = false;
  static const double MAX_HDL = 245;
  static const double MIN_HDL = 115;

  String? _20_neutral_fat; //中性脂肪 *
  static bool isNeutralRedFlag = false;
  static bool isNeutralBlueFlag = false;
  static const double MAX_NEUTRAL = 149;
  static const double MIN_NEUTRAL = 30;

  String? _21_blood_glucose; //血統空腹時
  static bool isGlucoseRedFlag = false;
  static bool isGlucoseBlueFlag = false;
  static const double MAX_GLUCOSE = 99;
  static const double MIN_GLUCOSE = 60;

  String? _22_hbA1c; //血統A1c
  static bool isHba1cRedFlag = false;
  static bool isHba1cBlueFlag = false;
  static const double MAX_HBA1C = 5.5;
  static const double MIN_HBA1C = 0;

  String? _23_ecg; //心電図
  String? _24_on_the_day; //受診日
  String? _25_urine; //尿蛋白
  String? _26_sugar; //尿糖

  //////////version2
  String? _27_correctedEyesight_right; //矯正視力右
  String? _28_correctedEyesight_left; //矯正視力左
  String? _29_latentBlood; //潜血
  String? _30_bloodInTheStool; //便潜血
  String? _31_totalProtein; //総蛋白
  static bool isTotalProteinRedFlag = false;
  static bool isTotalProteinBlueFlag = false;
  static const double MAX_TOTALPROTEIN = 7.9;
  static const double MIN_TOTALPROTEIN = 6.5;

  String? _32_albumin; //アルブミン
  static bool isAlbuminRedFlag = false;
  static bool isAlbuminBlueFlag = false;
  static const double MAX_ALBUMIN = 999;
  static const double MIN_ALBUMIN = 3.9;

  String? _33_totalBilirubin; //総ビリルビン
  static bool isTotalBilirubinRedFlag = false;
  static bool isTotalBilirubinBlueFlag = false;
  static const double MAX_TOTALBILIRUBIN = 1.0;
  static const double MIN_TOTALBILIRUBIN = 7.9;

  String? _34_alp; //ALP
  static bool isAlpRedFlag = false;
  static bool isAlpBlueFlag = false;
  static const double MAX_ALP = 130;
  static const double MIN_ALP = 100;

  String? _35_totalCholesterol; //総コレステロール
  static bool isCholesterolRedFlag = false;
  static bool isCholesterolBlueFlag = false;
  static const double MAX_CHOLESTEROL = 219;
  static const double MIN_CHOLESTEROL = 120;

  String? _36_uricAcid; //尿酸
  static bool isUricAcidRedFlag = false;
  static bool isUricAcidBlueFlag = false;
  static const double MAX_URICACID = 7.0;
  static const double MIN_URICACID = 2.1;

  String? _37_ureaNitrogen; //尿素窒素
  static bool isUriaNitrogenRedFlag = false;
  static bool isUriaNitrogenBlueFlag = false;
  static const double MAX_UREANITROGEN = 22.0;
  static const double MIN_UREANITROGEN = 8.0;

  String? _38_creatinine; //クレアチニン
  static bool isCreatinineRedFlag = false;
  static bool isCreatinineBlueFlag = false;
  static const double MAX_CREATININE = 1.00;
  static const double MIN_CREATININE = 0;

  String? _39_amylase; //アミラーゼ
  static bool isAmylaseRedFlag = false;
  static bool isAmylaseBlueFlag = false;
  static const double MAX_AMYLASE = 131;
  static const double MIN_AMYLASE = 37;

  String? _40_whiteBloodCell; //白血球数
  static bool isWhiteBloodRedFlag = false;
  static bool isWhiteBloodBlueFlag = false;
  static const double MAX_WHITEBLOOD = 9000;
  static const double MIN_WHITEBLOOD = 3200;

  String? _41_hematocrit;
  static bool isHematocritRedFlag = false;
  static bool isHematocritBlueFlag = false;
  static const double MAX_HEMATOCRIT = 51.9;
  static const double MIN_HEMATOCRIT = 39.8;

  String? _42_mcv;
  static bool isMcvRedFlag = false;
  static bool isMcvBlueFlag = false;
  static const double MAX_MCV = 101;
  static const double MIN_MCV = 80;

  String? _43_mch;
  static bool isMchRedFlag = false;
  static bool isMchBlueFlag = false;
  static const double MAX_MCH = 34.6;
  static const double MIN_MCH = 26.4;

  String? _44_mchc;
  static bool isMchcRedFlag = false;
  static bool isMchcBlueFlag = false;
  static const double MAX_MCHC = 36.4;
  static const double MIN_MCHC = 30.7;

  String? _45_serumIron;
  static bool isSerumIronRedFlag = false;
  static bool isSerumIronBlueFlag = false;
  static const double MAX_SERUMIRON = 210;
  static const double MIN_SERUMIRON = 50;

  String? _46_platelet;
  static bool isPlateletRedFlag = false;
  static bool isPlateletBlueFlag = false;
  static const double MAX_PLATELET = 32.9;
  static const double MIN_PLATELET = 14.5;

  String? _47_internal;

  Model(
      this._priority, [
        this._1_height = "",
        this._2_weight = "",
        this._3_waist = "",
        this._4_right_eye = "",
        this._5_left_eye = "",
        this._6_hearing_right_1000 = "",
        this._7_hearing_left_1000 = "",
        this._8_hearing_right_4000 = "",
        this._9_hearing_left_4000 = "",
        this._10_x_ray = "",
        this._11_low_blood_pressure = "",
        this._12_high_blood_pressure = "",
        this._13_red_blood = "",
        this._14_hemoglobin = "",
        this._15_got = "",
        this._16_gpt = "",
        this._17_gtp = "",
        this._18_ldl = "",
        this._19_hdl = "",
        this._20_neutral_fat = "",
        this._21_blood_glucose = "",
        this._22_hbA1c = "",
        this._23_ecg = "",
        this._24_on_the_day = "",
        this._25_urine = "",
        this._26_sugar = "",
        //////////version2
        this._27_correctedEyesight_right = "", //矯正視力右
        this._28_correctedEyesight_left = "", //矯正視力左
        this._29_latentBlood = "", //潜血
        this._30_bloodInTheStool = "", //便潜血
        this._31_totalProtein = "", //総蛋白
        this._32_albumin = "", //アルブミン
        this._33_totalBilirubin = "", //総ビリルビン
        this._34_alp = "", //ALP
        this._35_totalCholesterol = "", //総コレステロール
        this._36_uricAcid = "", //尿酸
        this._37_ureaNitrogen = "", //尿素窒素
        this._38_creatinine = "", //クレアチニン
        this._39_amylase = "", //アミラーゼ
        this._40_whiteBloodCell = "", //白血球数
        this._41_hematocrit = "", //ヘマトクリット
        this._42_mcv = "",
        this._43_mch = "",
        this._44_mchc = "",
        this._45_serumIron = "", //血清鉄
        this._46_platelet = "", //血小板
        this._47_internal = "",
      ]);

  Model.withId(
      this._id,
      this._date,
      this._priority, [
        this._1_height,
        this._2_weight,
        this._3_waist,
        this._4_right_eye,
        this._5_left_eye,
        this._6_hearing_right_1000,
        this._7_hearing_left_1000,
        this._8_hearing_right_4000,
        this._9_hearing_left_4000,
        this._10_x_ray,
        this._11_low_blood_pressure,
        this._12_high_blood_pressure,
        this._13_red_blood,
        this._14_hemoglobin,
        this._15_got,
        this._16_gpt,
        this._17_gtp,
        this._18_ldl,
        this._19_hdl,
        this._20_neutral_fat,
        this._21_blood_glucose,
        this._22_hbA1c,
        this._23_ecg,
        this._24_on_the_day,
        this._25_urine,
        this._26_sugar,
        //////////version2
        this._27_correctedEyesight_right, //矯正視力右
        this._28_correctedEyesight_left, //矯正視力左
        this._29_latentBlood, //潜血
        this._30_bloodInTheStool, //便潜血
        this._31_totalProtein, //総蛋白
        this._32_albumin, //アルブミン
        this._33_totalBilirubin, //総ビリルビン
        this._34_alp, //ALP
        this._35_totalCholesterol, //総コレステロール
        this._36_uricAcid, //尿酸
        this._37_ureaNitrogen, //尿素窒素
        this._38_creatinine, //クレアチニン
        this._39_amylase, //アミラーゼ
        this._40_whiteBloodCell, //白血球数
        this._41_hematocrit, //ヘマトクリット
        this._42_mcv,
        this._43_mch,
        this._44_mchc,
        this._45_serumIron, //血清鉄
        this._46_platelet, //血小板
        this._47_internal,
      ]);

  int? get id => _id;
  String get height_1 => _1_height!;
  String get weight_2 => _2_weight!;
  String get waist_3 => _3_waist!;
  String get right_eye_4 => _4_right_eye!;
  String get left_eye_5 => _5_left_eye!;
  String get hearing_right_1000_6 => _6_hearing_right_1000!;
  String get hearing_left_1000_7 => _7_hearing_left_1000!;
  String get hearing_right_4000_8 => _8_hearing_right_4000!;
  String get hearing_left_4000_9 => _9_hearing_left_4000!;
  String get x_ray_10 => _10_x_ray!;
  String get low_blood_pressure_11 => _11_low_blood_pressure!;
  String get high_blood_pressure_12 => _12_high_blood_pressure!;
  String get red_blood_13 => _13_red_blood!;
  String get hemoglobin_14 => _14_hemoglobin!;
  String get got_15 => _15_got!;
  String get gpt_16 => _16_gpt!;
  String get gtp_17 => _17_gtp!;
  String get ldl_18 => _18_ldl!;
  String get hdl_19 => _19_hdl!;
  String get neutral_fat_20 => _20_neutral_fat!;
  String get blood_glucose_21 => _21_blood_glucose!;
  String get HbA1c_22 => _22_hbA1c!;
  String get ecg_23 => _23_ecg!;
  String get on_the_day_24 => _24_on_the_day!;
  String get urine_25 => _25_urine!;
  String get sugar_26 => _26_sugar!;
  int get priority => _priority!;
  String get date => _date!;
  String get correctedEyesightRight_27 => _27_correctedEyesight_right!; //矯正視力右
  String get correctedEyesightLeft_28 => _28_correctedEyesight_left!; //矯正視力左
  String get lateBlood_29 => _29_latentBlood!; //潜血
  String get bloodInTheStool_30 => _30_bloodInTheStool!; //便潜血
  String get totalProtein_31 => _31_totalProtein!; //総蛋白
  String get albumin_32 => _32_albumin!; //アルブミン
  String get totalBilirubin_33 => _33_totalBilirubin!; //総ビリルビン
  String get alp_34 => _34_alp!; //ALP
  String get totalCholesterol_35 => _35_totalCholesterol!; //総コレステロール
  String get uricAcid_36 => _36_uricAcid!; //尿酸
  String get ureaNitrogen_37 => _37_ureaNitrogen!; //尿素窒素
  String get creatinine_38 => _38_creatinine!; //クレアチニン
  String get amylase_39 => _39_amylase!; //アミラーゼ
  String get whiteBloodCell_40 => _40_whiteBloodCell!; //白血球数
  String get hematocrit_41 => _41_hematocrit!; //ヘマトクリット
  String get mcv_42 => _42_mcv!;
  String get mch_43 => _43_mch!;
  String get mchc_44 => _44_mchc!;
  String get serumIron_45 => _45_serumIron!; //血清鉄
  String get platelet_46 => _46_platelet!; //血小板
  String get internal_47 => _47_internal!;

  /////setter aria
  set height_1(String newHeight) {
    try {
      double heightValue = double.parse(newHeight);
      // 初期化: まずは全てのフラグをリセット
      isHeightRedFlag = false;
      isHeightBlueFlag = false;
      _1_height = newHeight;
      if (heightValue > MAX_HEIGHT) {
        isHeightRedFlag = true;// 赤色フラグ
      } else if (heightValue < MIN_HEIGHT) {
        isHeightBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
        if (kDebugMode) {
          print('Error; $e');
        }
      }

  }
  set weight_2(String newWeight) {
    if (newWeight.length <= 255) {
      _2_weight = newWeight;
    }
  }
  set waist_3(String newWaist) {
    if (newWaist.length <= 255) {
      _3_waist = newWaist;
    }
  }
  set right_eye_4(String newREye) {
    if (newREye.length <= 255) {
      _4_right_eye = newREye;
    }
  }
  set left_eye_5(String newLEye) {
    if (newLEye.length <= 255) {
      this._5_left_eye = newLEye;
    }
  }
  set hearing_right_1000_6(String newHearingRight1000) {
    if (newHearingRight1000.length <= 255) {
      _6_hearing_right_1000 = newHearingRight1000;
    }
  }
  set hearing_left_1000_7(String newHearingLeft1000) {
    if (newHearingLeft1000.length <= 255) {
      _7_hearing_left_1000 = newHearingLeft1000;
    }
  }
  set hearing_right_4000_8(String newHearingRight4000) {
    if (newHearingRight4000.length <= 255) {
      _8_hearing_right_4000 = newHearingRight4000;
    }
  }
  set hearing_left_4000_9(String newHearingLeft4000) {
    if (newHearingLeft4000.length <= 255) {
      _9_hearing_left_4000 = newHearingLeft4000;
    }
  }
  set x_ray_10(String newXRay) {
    if (newXRay.length <= 255) {
      _10_x_ray = newXRay;
    }
  }
  set low_blood_pressure_11(String newLBP) {
    isLowBloodRedFlag = false;
    isLowBloodBlueFlag = false;
    _11_low_blood_pressure = newLBP;
    try {
      double lowBloodValue = double.parse(newLBP);
      if (lowBloodValue > MAX_LOWBLOOD) {
        isLowBloodRedFlag = true;// 赤色フラグ
      } else if (lowBloodValue < MIN_LOWBLOOD) {
        isLowBloodBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }

  }
  set high_blood_pressure_12(String newHBP) {
    isHeightRedFlag = false;
    isHeightBlueFlag = false; // 青色フラグ
    _12_high_blood_pressure = newHBP;
    try {
      double higthBloodValue = double.parse(newHBP);
      if (higthBloodValue > MAX_HIGHBLOOD){
        isHeightRedFlag = true;// 赤色フラグ
      } else if (higthBloodValue < MIN_HIGHBLOOD) {
        isHeightBlueFlag = true;
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set red_blood_13(String newRedBlood) {
     _13_red_blood= newRedBlood;
     isRedBloodRedFlag = false;
     isRedBloodBlueFlag = false;
    try {
      double redBloodValue = double.parse(newRedBlood);
     if (redBloodValue > MAX_REDBLOOD){
        isRedBloodRedFlag = true;// 赤色フラグ
      } else if (redBloodValue < MIN_REDBLOOD) {
        isRedBloodBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set hemoglobin_14(String newHemoglobin) {
    _14_hemoglobin = newHemoglobin;
    isHemoglobinRedFlag = false;
    isHemoglobinBlueFlag = false;
    try {
      double hemoglobinValue = double.parse(newHemoglobin);
     if (hemoglobinValue > MAX_HEMOGLOBIN){
        isHemoglobinRedFlag = false;// 赤色フラグ
      } else if (hemoglobinValue < MIN_HEMOGLOBIN) {
        isHemoglobinRedFlag = true;
        isHemoglobinBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set got_15(String newGot) {
    _15_got = newGot;
    isGotRedFlag = false;// 赤色フラグ
    isGotBlueFlag = false;
    try {
      double gotValue = double.parse(newGot);
      if (gotValue > MAX_GOT){
        isGotRedFlag = true;// 赤色フラグ
      } else if (gotValue < MIN_GOT) {
        isGotBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set gpt_16(String newGpt) {
    _16_gpt = newGpt;
    isGptRedFlag = false;
    isGptBlueFlag = false;
    try {
      double gptValue = double.parse(newGpt);
      if (gptValue > MAX_GPT){
        isGptRedFlag = true;// 赤色フラグ
      } else if (gptValue < MIN_GPT) {
        isGptBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set gtp_17(String newGtp) {
    _17_gtp = newGtp;
    isgtpRedFlag = false;
    isgtpBlueFlag = false; // 青色フ
    try {
      double gtpValue = double.parse(newGtp);
      if (gtpValue > MAX_GTP){
        isgtpRedFlag = true;// 赤色フラグ
      } else if (gtpValue < MIN_GTP) {
        isgtpBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set ldl_18(String newLdl) {
    _18_ldl = newLdl;
    isLdlRedFlag = false;// 赤色フラグ
    isLdlBlueFlag = false;
    try {
      double ldlValue = double.parse(newLdl);
     if (ldlValue > MAX_LDL){
        _18_ldl;
        isLdlRedFlag = true;// 赤色フラグ
      } else if (ldlValue < MIN_LDL) {
        _18_ldl = newLdl;
        isLdlBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set hdl_19(String newHdl) {
    _19_hdl = newHdl;
    isHdlRedFlag = false;
    isHdlBlueFlag = false;
    try {
      double hdlValue = double.parse(newHdl);
      if (hdlValue > MAX_HDL){
        _19_hdl;
        isHdlRedFlag = true;// 赤色フラグ
      } else if (hdlValue < MIN_HDL) {
        _19_hdl = newHdl;
        isHdlBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set neutral_fat_20(String newNeutralFat) {
    _20_neutral_fat = newNeutralFat;
    isNeutralRedFlag = false;// 赤色フラグ
    isNeutralBlueFlag = false;
    try {
      double nfValue = double.parse(newNeutralFat);
      if (nfValue > MAX_NEUTRAL){
        isNeutralRedFlag = true;// 赤色フラグ
      } else if (nfValue < MIN_NEUTRAL) {
        isNeutralBlueFlag = true; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set blood_glucose_21(String newBloodGlucose) {
    try {
      double bgValue = double.parse(newBloodGlucose);
      if (bgValue >= MIN_GLUCOSE && bgValue <= MAX_GLUCOSE) {
        _21_blood_glucose = newBloodGlucose;
        isGlucoseRedFlag = true; //ノーマル
      } else if (bgValue > MAX_GLUCOSE){
        _21_blood_glucose;
        isGlucoseRedFlag = false;// 赤色フラグ
        isGlucoseBlueFlag = true;
      } else if (bgValue < MIN_GLUCOSE) {
        _21_blood_glucose = newBloodGlucose;
        isGlucoseRedFlag = true;
        isGlucoseBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set HbA1c_22(String newHbA1c) {
    try {
      double hba1cValue = double.parse(newHbA1c);
      if (hba1cValue >= MIN_HBA1C && hba1cValue <= MAX_HBA1C) {
        _22_hbA1c = newHbA1c;
        isHba1cRedFlag = true; //ノーマル
      } else if (hba1cValue > MAX_HBA1C){
        _22_hbA1c;
        isHba1cRedFlag = false;// 赤色フラグ
        isHba1cBlueFlag = true;
      } else if (hba1cValue < MIN_HBA1C) {
        _22_hbA1c = newHbA1c;
        isHba1cRedFlag = true;
        isHba1cBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set ecg_23(String newEcg) {
    if (newEcg.length <= 255) {
      _23_ecg = newEcg;
    }
  }
  set on_the_day_24(String newOTD) {
    if (newOTD.length <= 255) {
      _24_on_the_day = newOTD;
    }
  }
  set urine_25(String newUrine) {
    if (newUrine.length <= 255) {
      _25_urine = newUrine;
    }
  }
  set sugar_26(String newSugar) {
    if (newSugar.length <= 255) {
      _26_sugar = newSugar;
    }
  }
  set priority(int newPriority) {
    if (newPriority <= 4) {
      _priority = newPriority;
    }
  }
  set date(String newDate) {
    _date = newDate;
  }
  set correctedEyesight_left_28 (String value) {
    _28_correctedEyesight_left = value;
  }
  set latentBlood_29(String value) {
    _29_latentBlood = value;
  }
  set bloodInTheStool_30(String value) {
    _30_bloodInTheStool = value;
  }
  set totalProtein_31(String newTotalProteinvalue) {
    try {
      double totalProteinValue = double.parse(newTotalProteinvalue);
      if (totalProteinValue >= MIN_TOTALPROTEIN && totalProteinValue <= MAX_TOTALPROTEIN) {
        _31_totalProtein = newTotalProteinvalue;
        isTotalProteinRedFlag = true; //ノーマル
      } else if (totalProteinValue > MAX_TOTALPROTEIN){
        _31_totalProtein;
        isTotalProteinRedFlag = false;// 赤色フラグ
        isTotalProteinBlueFlag = true;
      } else if (totalProteinValue < MIN_TOTALPROTEIN) {
        _31_totalProtein = newTotalProteinvalue;
        isTotalProteinRedFlag = true;
        isTotalProteinBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set albumin_32(String newAlbumin) {
    try {
      double albuminValue = double.parse(newAlbumin);
      if (albuminValue >= MAX_ALBUMIN && albuminValue <= MAX_ALBUMIN) {
        _32_albumin = newAlbumin;
        isAlbuminRedFlag = true; //ノーマル
      } else if (albuminValue > MAX_ALBUMIN){
        _32_albumin;
        isAlbuminRedFlag = false;// 赤色フラグ
        isAlbuminBlueFlag = true;
      } else if (albuminValue < MIN_ALBUMIN) {
        _32_albumin = newAlbumin;
        isAlbuminRedFlag = true;
        isAlbuminBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set totalBilirubin_33(String newTB) {
    _33_totalBilirubin = newTB;
    isTotalBilirubinRedFlag = false;
    isTotalBilirubinBlueFlag = false;

    try {
      double tBValue = double.parse(newTB);
      if (tBValue >= MIN_TOTALBILIRUBIN && tBValue <= MAX_TOTALBILIRUBIN) {
        isTotalBilirubinRedFlag = true; //ノーマル
      } else if (tBValue > MAX_TOTALBILIRUBIN){
        isTotalBilirubinRedFlag = false;// 赤色フラグ
        isTotalBilirubinBlueFlag = true;
      } else if (tBValue < MIN_TOTALBILIRUBIN) {
        isTotalBilirubinRedFlag = true;
        isTotalBilirubinBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set alp_34(String newALP) {
    try {
      double alpValue = double.parse(newALP);
      if (alpValue >= MIN_ALP && alpValue <= MAX_ALP) {
        _34_alp = newALP;
        isAlpRedFlag = true; //ノーマル
      } else if (alpValue > MAX_ALP){
        _34_alp;
        isAlpRedFlag = false;// 赤色フラグ
        isAlpBlueFlag = true;
      } else if (alpValue < MIN_ALP) {
        _34_alp = newALP;
        isAlpRedFlag = true;
        isAlpBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set totalCholesterol_35(String newTC) {
    try {
      double tcValue = double.parse(newTC);
      if (tcValue >= MIN_CHOLESTEROL && tcValue <= MAX_CHOLESTEROL) {
        _35_totalCholesterol =newTC;
        isHeightRedFlag = true; //ノーマル
      } else if (tcValue > MAX_CHOLESTEROL){
        _35_totalCholesterol;
        isHeightRedFlag = false;// 赤色フラグ
        isHeightBlueFlag = true;
      } else if (tcValue < MIN_CHOLESTEROL) {
        _35_totalCholesterol = newTC;
        isHeightRedFlag = true;
        isHeightBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set uricAcid_36(String newUricAcid) {
    try {
      double uricAcidValue = double.parse(newUricAcid);
      if (uricAcidValue >= MIN_URICACID && uricAcidValue <= MAX_URICACID) {
        _36_uricAcid = newUricAcid;
        isUricAcidRedFlag = true; //ノーマル
      } else if (uricAcidValue > MAX_URICACID){
        _36_uricAcid;
        isUricAcidRedFlag = false;// 赤色フラグ
        isUricAcidBlueFlag = true;
      } else if (uricAcidValue < MIN_URICACID) {
        _36_uricAcid = newUricAcid;
        isUricAcidRedFlag = true;
        isUricAcidBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set ureaNitrogen_37(String newUreaN) {
    try {
      double UNValue = double.parse(newUreaN);
      if (UNValue >= MIN_UREANITROGEN && UNValue <= MAX_UREANITROGEN) {
        _37_ureaNitrogen = newUreaN;
        isUriaNitrogenRedFlag = true; //ノーマル
      } else if (UNValue > MAX_UREANITROGEN){
        _37_ureaNitrogen;
        isUriaNitrogenRedFlag = false;// 赤色フラグ
        isUriaNitrogenBlueFlag = true;
      } else if (UNValue < MIN_UREANITROGEN) {
        _37_ureaNitrogen = newUreaN;
        isUriaNitrogenRedFlag = true;
        isUriaNitrogenBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set creatinine_38(String newCreatinine) {
    try {
      double creatinineValue = double.parse(newCreatinine);
      if (creatinineValue >= MIN_CREATININE && creatinineValue <= MAX_CREATININE) {
        _38_creatinine = newCreatinine;
        isCreatinineRedFlag = true; //ノーマル
      } else if (creatinineValue > MAX_CREATININE){
        _38_creatinine;
        isCreatinineRedFlag = false;// 赤色フラグ
        isCreatinineBlueFlag = true;
      } else if (creatinineValue < MIN_CREATININE) {
        _38_creatinine = newCreatinine;
        isCreatinineRedFlag = true;
        isCreatinineBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set amylase_39(String newAmylase) {
    try {
      double amylaseValue = double.parse(newAmylase);
      if (amylaseValue >= MIN_AMYLASE && amylaseValue <= MAX_AMYLASE) {
        _39_amylase = newAmylase;
        isAmylaseRedFlag = true; //ノーマル
      } else if (amylaseValue > MAX_AMYLASE){
        _39_amylase;
        isAmylaseRedFlag = false;// 赤色フラグ
        isAmylaseBlueFlag = true;
      } else if (amylaseValue < MIN_AMYLASE) {
        _39_amylase = newAmylase;
        isAmylaseRedFlag = true;
        isAmylaseBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set whiteBloodCell_40(String newWB) {
    try {
      double whiteBValue = double.parse(newWB);
      if (whiteBValue >= MIN_WHITEBLOOD && whiteBValue <= MAX_WHITEBLOOD) {
        _40_whiteBloodCell = newWB;
        isWhiteBloodRedFlag = true; //ノーマル
      } else if (whiteBValue > MAX_WHITEBLOOD){
        _40_whiteBloodCell;
        isWhiteBloodRedFlag = false;// 赤色フラグ
        isWhiteBloodBlueFlag = true;
      } else if (whiteBValue < MIN_WHITEBLOOD) {
        _40_whiteBloodCell = newWB;
        isWhiteBloodRedFlag = true;
        isWhiteBloodBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set hematocrit_41(String newHematcrit) {
    try {
      double hematcritValue = double.parse(newHematcrit);
      if (hematcritValue >= MIN_HEMATOCRIT && hematcritValue <= MAX_HEMATOCRIT) {
        _41_hematocrit = newHematcrit;
        isHematocritRedFlag = true; //ノーマル
      } else if (hematcritValue > MAX_HEMATOCRIT){
        _41_hematocrit;
        isHematocritRedFlag = false;// 赤色フラグ
        isHematocritBlueFlag = true;
      } else if (hematcritValue < MIN_HEMATOCRIT) {
        _41_hematocrit = newHematcrit;
        isHematocritRedFlag = true;
        isHematocritBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }

  set mcv_42(String newMCV) {
    try {
      double MCVValue = double.parse(newMCV);
      if (MCVValue >= MIN_MCV && MCVValue <= MAX_MCV) {
        _42_mcv = newMCV;
        isMcvRedFlag = true; //ノーマル
      } else if (MCVValue > MAX_MCV){
        _42_mcv;
        isMcvRedFlag = false;// 赤色フラグ
        isMcvBlueFlag = true;
      } else if (MCVValue < MIN_MCV) {
        _42_mcv = newMCV;
        isMcvRedFlag = true;
        isMcvBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }

  set mch_43(String newMCH) {
    try {
      double mchValue = double.parse(newMCH);
      if (mchValue >= MIN_HIGHBLOOD && mchValue <= MAX_HIGHBLOOD) {
        _43_mch = newMCH;
        isMchRedFlag = true; //ノーマル
      } else if (mchValue > MAX_HIGHBLOOD){
        _43_mch;
        isMchRedFlag = false;// 赤色フラグ
        isMchBlueFlag = true;
      } else if (mchValue < MIN_HIGHBLOOD) {
        _43_mch = newMCH;
        isMchRedFlag = true;
        isMchBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }

  set mchc_44(String newMCHC) {
    try {
      double mchcValue = double.parse(newMCHC);
      if (mchcValue >= MIN_MCHC && mchcValue <= MAX_MCHC) {
        _44_mchc = newMCHC;
        isMchcRedFlag = true; //ノーマル
      } else if (mchcValue > MAX_MCHC){
        _44_mchc;
        isMchcRedFlag = false;// 赤色フラグ
        isMchcBlueFlag = true;
      } else if (mchcValue < MIN_MCHC) {
        _44_mchc = newMCHC;
        isMchcRedFlag = true;
        isMchcBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }

  set serumIron_45(String newIRON) {
    try {
      double serumValue = double.parse(newIRON);
      if (serumValue >= MIN_SERUMIRON && serumValue <= MAX_SERUMIRON) {
        _45_serumIron = newIRON;
        isSerumIronRedFlag = true; //ノーマル
      } else if (serumValue > MAX_SERUMIRON){
        _45_serumIron;
        isSerumIronRedFlag = false;// 赤色フラグ
        isSerumIronBlueFlag = true;
      } else if (serumValue < MIN_SERUMIRON) {
        _45_serumIron = newIRON;
        isSerumIronRedFlag = true;
        isSerumIronBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }

  set platelet_46(String newPlatelet) {
    try {
      double plateletValue = double.parse(newPlatelet);
      if (plateletValue >= MIN_PLATELET && plateletValue <= MAX_PLATELET) {
        _46_platelet = newPlatelet;
        isPlateletRedFlag = true; //ノーマル
      } else if (plateletValue > MAX_PLATELET){
        _46_platelet;
        isPlateletRedFlag = false;// 赤色フラグ
        isPlateletBlueFlag = true;
      } else if (plateletValue < MIN_PLATELET) {
        _46_platelet = newPlatelet;
        isPlateletRedFlag = true;
        isPlateletBlueFlag = false; // 青色フラグ
      }
    }catch (e) {
      if (kDebugMode) {
        print('Error; $e');
      }
    }
  }
  set correctedEyesight_right_27(String value) {
    _27_correctedEyesight_right = value;
  }
  set internal_47(String value){
    _47_internal = value;
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['height'] = _1_height;
    map['weight'] = _2_weight;
    map['waist'] = _3_waist;
    map['right_eye'] = _4_right_eye;
    map['left_eye'] = _5_left_eye;
    map['hearing_right_1000'] = _6_hearing_right_1000;
    map['hearing_left_1000'] = _7_hearing_left_1000;
    map['hearing_right_4000'] = _8_hearing_right_4000;
    map['hearing_left_4000'] = _9_hearing_left_4000;
    map['x_ray'] = _10_x_ray;
    map['low_blood_pressure'] = _11_low_blood_pressure;
    map['high_blood_pressure'] = _12_high_blood_pressure;
    map['red_blood'] = _13_red_blood;
    map['hemoglobin'] = _14_hemoglobin;
    map['got'] = _15_got;
    map['gpt'] = _16_gpt;
    map['gtp'] = _17_gtp;
    map['ldl'] = _18_ldl;
    map['hdl'] = _19_hdl;
    map['neutral_fat'] = _20_neutral_fat;
    map['blood_glucose'] = _21_blood_glucose;
    map['hA1c'] = _22_hbA1c;
    map['ecg'] = _23_ecg;
    map['on_the_day'] = _24_on_the_day;
    map['urine'] = _25_urine;
    map['sugar'] = _26_sugar;
    map['priority'] = _priority;
    map['date'] = _date;
    map['correctedEyesight_right'] =  _27_correctedEyesight_right; //矯正視力右
    map['correctedEyesight_left'] = _28_correctedEyesight_left; //矯正視力左
    map['latenBlood'] = _29_latentBlood; //潜血
    map['bloodInTheStool'] = _30_bloodInTheStool; //便潜血
    map['totalProtein'] = _31_totalProtein; //総蛋白
    map['albumin'] = _32_albumin; //アルブミン
    map['totalBilirubin'] = _33_totalBilirubin; //総ビリルビン
    map['alp'] = _34_alp; //ALP
    map['totalCholesterol'] = _35_totalCholesterol; //総コレステロール
    map['uricAcid'] = _36_uricAcid; //尿酸
    map['ureaNitrogen'] = _37_ureaNitrogen; //尿素窒素
    map['creatinine'] = _38_creatinine; //クレアチニン
    map['amylase'] = _39_amylase; //アミラーゼ
    map['whiteBloodCell'] = _40_whiteBloodCell; //白血球数
    map['hematocrit'] = _41_hematocrit;
    map['mcv'] = _42_mcv;
    map['mch'] = _43_mch;
    map['mchc'] = _44_mchc;
    map['serumIron'] = _45_serumIron;
    map['platelet'] = _46_platelet;
    map['internal'] = _47_internal;
    return map;
  }

  Model.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _1_height = map['height'];
    _2_weight = map['weight'];
    _3_waist = map['waist'];
    _4_right_eye = map['right_eye'];
    _5_left_eye = map['left_eye'];
    _6_hearing_right_1000 = map['hearing_right_1000'];
    _7_hearing_left_1000 = map['hearing_left_1000'];
    _8_hearing_right_4000 = map['hearing_right_4000'];
    _9_hearing_left_4000 = map['hearing_left_4000'];
    _10_x_ray = map['x_ray'];
    _11_low_blood_pressure = map['low_blood_pressure'];
    _12_high_blood_pressure = map['high_blood_pressure'];
    _13_red_blood = map['red_blood'];
    _14_hemoglobin = map['hemoglobin'];
    _15_got = map['got'];
    _16_gpt = map['gpt'];
    _17_gtp = map['gtp'];
    _18_ldl = map['ldl'];
    _19_hdl = map['hdl'];
    _20_neutral_fat = map['neutral_fat'];
    _21_blood_glucose = map['blood_glucose'];
    _22_hbA1c = map['hA1c'];
    _23_ecg = map['ecg'];
    _24_on_the_day = map['on_the_day'];
    _25_urine = map['urine'];
    _26_sugar = map['sugar'];
    _priority = map['priority'];
    _date = map['date'];
    ///////////
    _27_correctedEyesight_right = map['correctedEyesight_right']; //矯正視力右
    _28_correctedEyesight_left= map['correctedEyesight_left']; //矯正視力左
    _29_latentBlood = map['latenBlood']; //潜血
    _30_bloodInTheStool = map['bloodInTheStool']; //便潜血
    _31_totalProtein = map['totalProtein']; //総蛋白
    _32_albumin = map['albumin']; //アルブミン
    _33_totalBilirubin = map['totalBilirubin']; //総ビリルビン
    _34_alp =  map['alp']; //ALP
    _35_totalCholesterol = map['totalCholesterol']; //総コレステロール
    _36_uricAcid = map['uricAcid']; //尿酸
    _37_ureaNitrogen = map['ureaNitrogen']; //尿素窒素
    _38_creatinine = map['creatinine']; //クレアチニン
    _39_amylase = map['amylase']; //アミラーゼ
    _40_whiteBloodCell = map['whiteBloodCell']; //白血球数
    _41_hematocrit = map['hematocrit'];
    _42_mcv = map['mcv'];
    _43_mch = map['mch'];
    _44_mchc = map['mchc'];
    _45_serumIron = map['serumIron'];
    _46_platelet = map['platelet'];
    _47_internal = map['internal'];
  }
}