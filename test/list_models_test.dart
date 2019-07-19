import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workshop/models/FoodItem.dart';
import 'package:mockito/mockito.dart';

class MockFoodItem extends Mock implements FoodItem {}

void main() {
  test('should check the list count', () {
    var mockFoodItem = MockFoodItem();
    when(mockFoodItem.name).thenReturn('juice');

    expect(mockFoodItem.name, 'juice');
  });
}
