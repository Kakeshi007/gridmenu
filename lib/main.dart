import 'package:flutter/material.dart';
import 'package:gridmenu/pages/menu_page.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xff622F74)),
      home: MenuPage(),
    );
  }
}
