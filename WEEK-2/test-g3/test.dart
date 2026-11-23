int calculateFinalPrice({
  required int price, 
  int? fee, 
}) {
  return price + (fee ?? 0); 
}

void main() {
  List<int> prices = [20, 35, 50, 80];
  List<int?> fees = [5, null, 10, null];

  for (int i = 0; i < prices.length; i++) {
    int finalPrice = calculateFinalPrice(price: prices[i], fee: fees[i]);
    print("Order ${i + 1}: $finalPrice");
  }
}