import 'dart:ui' as prefix0;
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertest/warp_demo.dart';

import 'SplashScreen.dart';
import 'ToolTipDemo.dart';
import 'draggable_demo.dart';
import 'expansion_panel_list.dart';
import 'expansion_tile.dart';
import 'home_demo.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: LoginPage(),
    );
  }
}

