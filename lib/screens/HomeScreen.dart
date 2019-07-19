import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/NavigationDrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue, brightness: Brightness.dark),
      home: Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.home),
            title: Text('Item: $index'),
            onTap: () {},
          );
        }),
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text('Gmail App'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.play_for_work),
        ),
      ),
    );
  }
}
