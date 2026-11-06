class Template {
  late int id;
  late String name;
  late String? description;
  late String handle;
  late String? status;

  Template.fromMap(
    dynamic map, {
    String defaultDescription = '',
  }) {
    id = map['id'] ?? 0;
    name = map['name'] ?? '';
    description = map['description'] ?? defaultDescription;
    handle = map['handle'] ?? '';
    status = map['status'] ?? '';
  }

  Map<String, dynamic> toAPIJson() {
    return {
      'id': id,
      'name': name,
      'handle': handle,
    };
  }
}
