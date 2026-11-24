// Fixed list of sizes, each with its price
enum BurgerSize {
  small(3),
  normal(4),
  king(5);

  final int price;
  const BurgerSize(this.price);
}


enum Extra {
  frenchFries("French fries", 2),
  salad("Salad", 1),
  fruit("Fruit", 3),
  iceCream("Ice cream", 5);

  final String name;
  final int price;
  const Extra(this.name, this.price);
}

class BurgerOrder {
  final String id;
  final BurgerSize size;
  final Set<Extra> _extras = {};

  BurgerOrder(this.id, {this.size = BurgerSize.normal, List<Extra> extras = const []}) {
    _extras.addAll(extras);
  }


  bool addExtra(Extra extra) {
    return _extras.add(extra);
  }

  int get totalPrice {
    int total = size.price;
    for (Extra e in _extras) {
      total += e.price;
    }
    return total;
  }
}

void main() {
  BurgerOrder o1 = BurgerOrder("ORD001", extras: [Extra.frenchFries, Extra.iceCream]);
  BurgerOrder o2 = BurgerOrder("ORD002", size: BurgerSize.king, extras: [Extra.salad]);
  BurgerOrder o3 = BurgerOrder("ORD003", size: BurgerSize.small);

  print("${o1.id}: \$${o1.totalPrice}");
  print("${o2.id}: \$${o2.totalPrice}");
  print("${o3.id}: \$${o3.totalPrice}");


  o1.addExtra(Extra.frenchFries);
  print("${o1.id} after adding French fries again: \$${o1.totalPrice}"); // $11
}