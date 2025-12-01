import 'package:batch_13/module-8/container.dart';
import 'package:batch_13/module-8/grid_view.dart';
import 'package:batch_13/module-9/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'module-11/responsive.dart';
import 'module-11/responsive_package.dart';
import 'module-8/form.dart';

import 'button.dart';

import 'home.dart';
import 'package:flutter/material.dart';

import 'module-8/input.dart';
import 'module-9/Flist.dart';
import 'module-9/stack.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.green,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.green,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              textTheme: TextTheme(
                headlineMedium: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: Colors.blue,
              scaffoldBackgroundColor: Colors.grey[900],
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              textTheme: TextTheme(
                headlineMedium: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            themeMode: ThemeMode.light,
            home: ThemeTest(),
            initialRoute: 'resPak',
            routes: {
              'home': (context) => Home(),
              'button': (context) => Button(),
              'theme': (context) => ThemeTest(),
              'flist': (context) => Flist(),
              'stack': (context) => MyStack(),
              'res': (context) => Res(),
              'resPak': (context) => ResponsivePackage(),
            },
          );
        },
    );
  }
}

