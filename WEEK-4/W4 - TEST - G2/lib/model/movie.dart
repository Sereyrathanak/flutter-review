import 'customer.dart';

class Movie {
  final String id;
  final String title;
  final int seats;
  final List<Customer> audience = [];

  Movie({required this.id, required this.title, required this.seats});

  bool get isSoldOut => audience.length >= seats;
}
