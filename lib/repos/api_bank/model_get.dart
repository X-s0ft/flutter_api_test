class Bank {
  final int id;
  final String name;
  final double price;

  Bank({required this.id, required this.name, required this.price});

  factory Bank.fromJson(Map<String, dynamic> js) {
    return Bank(id: js['id'], name: js['name'], price: js['price']);
  }
}
