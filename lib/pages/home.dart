import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(child: new Text("Ajustes"));
    var info = new AboutListTile(
      child: new Text("Infomación App"),
      applicationIcon: new Icon(Icons.info),
      icon: new Icon(Icons.info),
      applicationVersion: "v1.0.0",
      applicationName: "Demo Lists",
    );
    ListTile _getItem(Icon icon, String description, String route) {
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    ListView listView = new ListView(
      children: <Widget>[
        header,
        _getItem(new Icon(Icons.view_list), 'ListView Basic', '/listView'),
        _getItem(new Icon(Icons.list), 'ListView Horizontal', '/listViewHorizontal'),
        _getItem(new Icon(Icons.filter_list), 'Curso', '/listViewCurso'),
        info
      ],
    );
    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Lists"),
      ),
      drawer: _getDrawer(context),
    );
  }
}
