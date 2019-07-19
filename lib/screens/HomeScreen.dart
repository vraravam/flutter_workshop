import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/NavigationDrawer.dart';
import 'package:flutter_workshop/models/FoodItem.dart';

class HomePage extends StatelessWidget {
  var foodItems = [ FoodItem('juice'), FoodItem('samosa'), FoodItem('gulab jamun')];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue, brightness: Brightness.dark),
      home: Scaffold(
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              var foodItemAtIndex = foodItems[index];
              return ListTile(
                leading: CircleAvatar(child: Text(foodItemAtIndex.name.substring(0, 1))),
                title: Text(foodItemAtIndex.name),
                onTap: () {},
              );
            },
            itemCount: foodItems.length),
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
