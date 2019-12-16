import 'package:flutter/material.dart';
import 'package:myturn/MainModule.dart';
import 'package:myturn/Routes.dart';

import 'core/theme/AppTheme.dart';
import 'ui/HomeScreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MainModule mainModule = MainModule();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyTurn",
      debugShowCheckedModeBanner: false,
      theme: ContemporaryTheme().getTheme(),
      //home: HomeScreen(),
      initialRoute: mainModule.get<Routes>().initalRoute(),
      // Load the routes, so that they are available downstream
      routes: mainModule.get<Routes>().routes(),
    );
  }
}
// end of class
