library app;

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
  show
    kDebugMode,
    kProfileMode;

import 'package:listen_field/src/pages/pages.dart';

class App extends StatelessWidget {
  const App({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: kProfileMode,
      debugShowCheckedModeBanner: kDebugMode,
      title: 'Test Task',
      theme: ThemeData(
        brightness: Brightness.light,
        disabledColor: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        cardTheme: CardTheme(
          elevation: 2.0,
          color: Colors.white,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0)),
          ),
        ),
      ),
      home: IndexPage(),
    );
  }
}