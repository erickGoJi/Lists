import 'package:flutter/material.dart';
import 'package:listview_basic/pages/listViewBasic.dart';
import 'package:listview_basic/pages/horizontalList.dart';
import 'package:listview_basic/pages/home.dart';
import 'package:listview_basic/pages/tutorial.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      MyListView.routeName: (BuildContext context) => new MyListView(),
      MyListViewHorizontal.routeName: (BuildContext context) => new MyListViewHorizontal(),
      RandomWords.routeName: (BuildContext context) => new RandomWords(),
    },
  ));
}
