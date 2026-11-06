class Customer {
  late int id;
  late String name;
  late String email;

  Customer.fromMap(dynamic map) {
    id = map['id'] ?? 0;
    name = map['name'] ?? '';
    email = map['email'] ?? '';
  }

  Map<String, dynamic> toAPIJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
