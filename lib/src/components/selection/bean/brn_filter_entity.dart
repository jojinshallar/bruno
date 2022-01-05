class ItemEntity {
  late String key;
  late String name;
  late String value;

  ItemEntity({required this.key, required this.name, required this.value});

  ItemEntity.fromJson(Map<String, dynamic>? map) {
    if (map == null) return;
    key = map['key'] ?? "";
    name = map['title'] ?? "";
    value = map['value'] ?? "";
  }
}
