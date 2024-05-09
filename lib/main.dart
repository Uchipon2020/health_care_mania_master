
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:healthcare_mania_legacy_new/screens/main_screen.dart';

void main() async {runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme =
    ColorScheme.fromSeed(
        brightness:
        MediaQuery.platformBrightnessOf(context),
        seedColor: Colors.amber);
    return MaterialApp(
        title: 'Health Care Mania',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: colorScheme,
          floatingActionButtonTheme:
            FloatingActionButtonThemeData(
              backgroundColor: colorScheme.tertiary,
              foregroundColor: colorScheme.onTertiary,
            )
        ),
        home:const ModelListScreen(),
        localizationsDelegates:const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ]
    );
  }
}