import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/NavigationDrawer.dart';
import 'package:flutter_workshop/models/FoodItem.dart';
import 'package:flutter_workshop/services/FoodItemService.dart';

import 'FoodDetail.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  var foodItems = List<FoodItem>();

  @override
  void initState() {
    FoodItemService.getAllFoodItems().then((foodItem) {
      setState(() {
        foodItems = foodItem;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
        actions: <Widget>[
          Container(
            child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetail(),
                    ),
                  );
                }),
          )
        ],
      ),
      drawer: NavigationDrawer(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(foodItems[index].name),
              subtitle: Text(foodItems[index].description),
            );
          },
          itemCount: foodItems.length,
        ),
      ),
    );
  }
}
