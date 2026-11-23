
// you function
void deliveryPrice(
  int requires orderPrice; 
  int freeDeliveryLimit;
  int deliveryFee;
){

  if (orderPrice >= freeDeliveryLinit) {

    return deliveryPrice(deliveryFee);

  } else {
    
  }
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
  for (entry in orders.entries) {
    return deliveryPrice(orders);
  }

  print(deliveryPrice);
}
