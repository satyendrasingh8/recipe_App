import 'package:flutter/material.dart';
import 'package:recipeApp/screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 31,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Roboto', fontSize: 28, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Settings',
             Icons.settings,
             () {
               Navigator.of(context).pushReplacementNamed(Settings.routeName);
             }
             ),
        ],
      ),
    );
  }
}
