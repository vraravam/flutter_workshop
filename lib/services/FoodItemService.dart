import 'package:flutter_workshop/constants/Constants.dart';
import 'package:flutter_workshop/models/FoodItem.dart';
import 'package:http/http.dart' as http;

class FoodItemService {
  static Future<List<FoodItem>> getAllFoodItems() async {
    var response = await http.get(getFoodItemsUrl);
    return foodItemFromJson(response.body);
  }
}