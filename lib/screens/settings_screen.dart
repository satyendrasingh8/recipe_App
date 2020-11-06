import 'package:flutter/material.dart';
import 'package:recipeApp/widgets/main_drawer.dart';

class Settings extends StatelessWidget {
  static const routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
    );
  }
}
