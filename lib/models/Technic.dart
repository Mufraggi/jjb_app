class TechnicDb {
  final String id;
  final String name;
  final String category;

  TechnicDb({required this.id, required this.name, required this.category});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'category': category};
  }

  factory TechnicDb.fromMap(Map<String, dynamic> map) {
    return TechnicDb(
      id: map['id'],
      name: map['name'],
      category: map['category'],
    );
  }
}
