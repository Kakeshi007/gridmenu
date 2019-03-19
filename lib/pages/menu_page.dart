import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Material menuItem(IconData icon, String titleMenu, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      titleMenu,
                      style: TextStyle(color: Color(color), fontSize: 20.0),
                    ),
                  ),
                  Material(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8.0,
      ),
      children: <Widget>[
        Center(
            child: Text(
          'Menu',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 23.0, color: Colors.green),
        )),
        menuItem(Icons.add_circle_outline, "Menu 1", 0xffed622b),
        menuItem(Icons.print, "Menu 2", 0xffed622b),
        menuItem(Icons.save, "Menu 3", 0xffed622b),
        menuItem(Icons.account_balance, "Menu 4", 0xffed622b),
        menuItem(Icons.error, "Menu 5", 0xffed622b),
        menuItem(Icons.email, "Menu 6", 0xffed622b),
      ],
      staggeredTiles: [
        StaggeredTile.extent(3, 20),
        StaggeredTile.extent(1, 150),
        StaggeredTile.extent(1, 150),
        StaggeredTile.extent(1, 150),
        StaggeredTile.extent(1, 150),
        StaggeredTile.extent(1, 150),
        StaggeredTile.extent(1, 150),
      ],
    ));
  }
}
