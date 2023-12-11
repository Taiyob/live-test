void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "JackFruit", "color": "Yellow", "price": 50},
    {"name": "Pineapple", "color": "Green", "price": 150},
    {"name": "Watermelon", "color": "Red", "price": 80},
  ];

  print(" Fruit Details");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    fruit['price'] = (originalPrice - discountAmount).toStringAsFixed(2);
  }
}