import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/NavigationDrawer.dart';

class FoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Details'),
      ),
      drawer: NavigationDrawer(),
      body: Container(
        child: Text('Detail'),
      ),
    );
  }
}
