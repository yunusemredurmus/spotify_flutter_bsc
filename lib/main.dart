import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/bottom_nav_bar.dart';
import 'package:spotify_flutter_bsc/ddaa.dart';
import 'package:spotify_flutter_bsc/ppp.dart';

import 'search.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        home: BottomNavBar()
      ),
    );
  }
}
