int calculateTicketPrice({
  required int age,
  required int ticketPrice,
  int? snack,
}) {
  int price;
  if (age < 12) {
    price = ticketPrice ~/ 2;
  } else {
    price = ticketPrice;
  }
  if (snack != null) {
    price = price + snack;
  }
  return price;
}

void main() {
  List<Map<String, dynamic>> tickets = [
    {"age": 10, "ticketPrice": 8, "snack": 3},
    {"age": 18, "ticketPrice": 10, "snack": null},
    {"age": 12, "ticketPrice": 8, "snack": 2},
    {"age": 25, "ticketPrice": 10, "snack": null},
  ];

  for (int i = 0; i < tickets.length; i++) {
    int price = calculateTicketPrice(
      age: tickets[i]["age"],
      ticketPrice: tickets[i]["ticketPrice"],
      snack: tickets[i]["snack"],
    );
    print("Ticket ${i + 1}: $price");
  }
}