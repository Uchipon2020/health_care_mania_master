
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:healthcare_mania_legacy_new/screens/main_screen.dart';

void main() async {runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Health Care Mania',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          floatingActionButtonTheme:
           const FloatingActionButtonThemeData(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black
            ),
        ),
        home:const ModelListScreen(),
        localizationsDelegates:const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ]
    );
  }
}