
// you function
int calcualateDelivery({
  required int orderPrice, 
  int? deliveryFee, 
  required int freeDeliveryLimit,
}){
  if (orderPrice >= freeDeliveryLimit){
    return 0 ; 
  }
  return deliveryFee ?? 0 ; 

}

void main() {
  Map<String, int> orders = {
    "ORD001": 40,
    "ORD002": 60,
    "ORD003": 25,
    "ORD004": 80,
  };
  int? deliveryFee = 5;
  int freeDeliveryLimit = 50;


  // For each order, compute the delivery price
  // with your function and print it.
  for (final entry in orders.entries){
    int price = calcualateDelivery(orderPrice: entry.value, freeDeliveryLimit: freeDeliveryLimit, deliveryFee: deliveryFee);
    print("${entry.key}: $price");
  }
}
