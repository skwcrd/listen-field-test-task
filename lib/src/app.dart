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
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IndexPage(),
    );
  }
}