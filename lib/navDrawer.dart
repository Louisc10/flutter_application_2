import 'package:flutter/material.dart';
import 'package:flutter_application_2/homePage.dart';
import 'package:flutter_application_2/listItemPage.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavDrawerState();
  }
}

class NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Hits'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: FlatButton(
                child: Text(
                  'Home',
                  textAlign: TextAlign.start,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) {
                      return HomePage();
                    }),
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.store),
              title: FlatButton(
                child: Text(
                  'List Items',
                  textAlign: TextAlign.start,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) {
                      return ListItemPage();
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
