import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../models/model.dart';
import '../utils/database_helper.dart';
import 'graph/weight_graph.dart';
import 'model_detail_screen.dart';
import 'model_view_screen.dart';

class ModelListScreen extends StatefulWidget {
  const ModelListScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ModelListScreenState();
  }
}

class ModelListScreenState extends State<ModelListScreen> {
  DatabaseHelper databaseHelper = DatabaseHelper(); //データを読み込む処理をインスタンス化
  List<Model>? modelList; //Modelクラスの定義全体を、複数記憶する（List）として保持するインスタンスを作成
  List<Model>? modelListWeight;
  List<Model>? modelListBloodHight;
  List<Model>? modelListBloodLow;
  int count = 0;
  /*int weightCount = 0;
  int bloodHeightCount = 0;
  int bloodLowCount = 0;
  final bool _isEnabled = true;
  final bool _isEnabled2 = true;*/


 /* int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => WeightGraph(modelList: modelList)),
      );
    
    setState(() {
      _selectedIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    if (modelList == null) {
      //listが空ならば。基本的に最初はからなので、空白のmodelListが作成される
      modelList = <Model>[];
      debugPrint('初期リセットビルド通過');
      updateListView(); //下の、更新メソッド処理
    }

    return Scaffold(
      appBar: AppBar(title: const Text('HEALTHCARE MANIA'), actions: [
        /*PopupMenuButton(
          icon: const Icon(Icons.auto_graph_sharp),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => WeightGraph(modelList: modelList)),
                  );
                },
                //enabled: _modelDataCheck(_isEnabled),

                /*onTap: _isEnabled2 ? () {const InkWell(onTap: null);} : () {Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                Graph1(modelWeight: modelList),
                          ),
                        );
                      },*/
                child: const Text("体重グラフ"),
              ),
              PopupMenuItem(
                enabled: _modelDataCheck2(_isEnabled2),
                onTap: _isEnabled
                    ? () {
                        const InkWell(onTap: null);
                      }
                    : () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WeightGraph(modelList: modelList,),
                          ),
                        );
                      },
                child: const Text("血圧グラフ"),
              ),
            ];
          },
        ),*/
        PopupMenuButton<Text>(
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text("設定"),
              ),
            ];
          },
        ),
      ]),
      body: getModelListView(),
      /*bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
          navigateToDetail(Model(1, ''), '新規登録');
        },
        tooltip: '新規登録',
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getModelListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 5.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: getPriorityColor(modelList![position].priority),
              child: getPriorityIcon(modelList![position].priority),
            ),
            title: Text('受診日 : ${modelList![position].on_the_day_24}'),
            subtitle: Text('更新日${modelList![position].date}'),
            trailing: GestureDetector(
              child: IconButton(
                icon: const Icon(Icons.account_balance_wallet),
                color: Colors.grey,
                onPressed: () {
                  navigateToDetail(modelList![position], '訂正');
                },
              ),
            ),
            onTap: () {
              debugPrint("ListTile Tapped");
              navigateToView(modelList![position], '参照');
            },
          ),
        );
      },
    );
  }

  // Returns the priority color
  Color getPriorityColor(int priority) {
    switch (priority) {
      case 1: //type = "定期健康診断";
        return Colors.green;
      case 2: //type = "人間ドック";
        return Colors.blue;
      case 3:
        return Colors.yellow;
      default:
        return Colors.amber;
    }
  }

  // Returns the priority icon
  Icon getPriorityIcon(int priority) {
    switch (priority) {
      case 1:
        return const Icon(Icons.play_arrow);
      case 2:
        return const Icon(Icons.keyboard_double_arrow_right);
      case 3:
        return const Icon(Icons.keyboard_double_arrow_right);
      default:
        return const Icon(Icons.keyboard_double_arrow_right);
    }
  }

  //画面遷移時の、データ移行を書いた処理
  void navigateToDetail(Model models, String appBarTitle) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ModelDetailScreen(
            model: models,
            appBarTitle: appBarTitle,
          );
        },
      ),
    );

    if (result == true) {
      updateListView();
    }
  }

  void navigateToView(Model models, String appBarTitle) async {
    await Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return ModelViewScreen2(
            appBarTitle: appBarTitle,
            model: models,
            modelList: modelList!,
          );
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const Offset begin = Offset(-1.0, 0.0); // 左から右
          const Offset end = Offset.zero;
          final Animatable<Offset> tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: Curves.easeInOut));
          final Animation<Offset> offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  /*bool _modelDataCheck(check) {
    updateListView();
    if (weightCount == 0) {
      check = false;
    } else {
      check = true;
    }
    return check;
  }*/

  /*bool _modelDataCheck2(check) {
    if (bloodHeightCount == 0 && bloodLowCount == 0) {
      check = false;
    } else {
      check = true;
    }
    return check;
  }*/

  void updateListView() {
    final Future<Database> dbFuture =
        databaseHelper.initializeDatabase(); //イニシャライズとは、初期化
    dbFuture.then((database) {
      //thenはFor thenの時のように、処理が終了したら、という意味合い
      Future<List> noteListFuture = databaseHelper.getModelList();
      noteListFuture.then((modelsList) {
        setState(() {
          modelList = modelsList.cast<Model>();
          count = modelsList.length;
          //weightCount = modelsList.where((map) => map['weight'] != null).length;
          //bloodHeightCount = modelsList.where((map) => map['high_blood_pressure'] != null).length;
          //bloodLowCount = modelsList.where((map) => map['low_blood_pressure'] != null).length;
        });
      });
    });
  }
}
