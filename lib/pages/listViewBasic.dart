import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  static const String routeName = "/listView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              subtitle: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('Album'),
              subtitle: Text('Description'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
