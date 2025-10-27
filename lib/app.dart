import 'package:batch_13/module-8/container.dart';
import 'package:batch_13/module-8/grid_view.dart';

import 'module-8/form.dart';

import 'button.dart';

import 'home.dart';
import 'package:flutter/material.dart';

import 'module-8/input.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: GridV(),
    );
  }
}
