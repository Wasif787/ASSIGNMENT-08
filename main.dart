import 'dart:ui';

import 'package:flutter/material.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:project01/Work.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        home: Work(),


    );}}
