class Bank {
  final String id;
  final String name;
  final double price;

  Bank({required this.id, required this.name, required this.price});

  factory Bank.fromJson(Map<String, dynamic> js) {
    return Bank(
      id: js['id'] as String,
      name: js['name'] as String,
      price: js['price'] as double,
    );
  }
}

//Structure 
// [
//     {
//         "id": "1",
//         "name": "T-shirt",
//         "price": 19.99
//     },
//     {
//         "id": "2",
//         "name": "Jeans",
//         "price": 49.99
//     }
// ]