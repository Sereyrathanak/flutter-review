enum SeatClass {
  standard(10),
  comfort(15),
  vip(20);

  final int price;
  const SeatClass(this.price);
}

enum TicketOption {
  luggage(3),
  meal(4),
  wifi(1),
  pillow(2);

  final int price;
  const TicketOption(this.price);
}

class Ticket {
  final String id;
  final String passenger;
  final SeatClass seatClass;
  final Set<TicketOption> options;

  Ticket({
    required this.id,
    required this.passenger,
    this.seatClass = SeatClass.standard,
    Set<TicketOption> options = const {},
  }) : options = Set.unmodifiable(options);

  int get totalPrice {
    int total = seatClass.price;
    for (TicketOption o in options) {
      total += o.price;
    }
    return total;
  }

  Ticket upgrade(SeatClass newClass) {
    return Ticket(id: id, passenger: passenger, seatClass: newClass, options: options);
  }
}

void main() {
  Ticket t1 = Ticket(id: "T001", passenger: "Dara", options: {TicketOption.luggage, TicketOption.meal});
  Ticket t2 = Ticket(id: "T002", passenger: "Sophea", seatClass: SeatClass.vip);
  Ticket t3 = Ticket(id: "T003", passenger: "Vanna", seatClass: SeatClass.comfort, options: {TicketOption.wifi, TicketOption.pillow});

  print("${t1.id}: \$${t1.totalPrice}"); 
  print("${t2.id}: \$${t2.totalPrice}");
  print("${t3.id}: \$${t3.totalPrice}");

  // Bonus
  Ticket t1Vip = t1.upgrade(SeatClass.vip);
  print("New ${t1Vip.id}: \$${t1Vip.totalPrice}"); 
  print("Old ${t1.id}: \$${t1.totalPrice}");       
}