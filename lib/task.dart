class Task {
  final String id;
  final String name;
  final bool isCompleted;
  final String timePeriod;
  final DateTime createdAt;
  final String location;

  Task({
    required this.id,
    required this.name,
    required this.isCompleted,
    required this.timePeriod,
    required this.createdAt,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isCompleted': isCompleted,
      'timePeriod': timePeriod,
      'createdAt': createdAt,
      'location': location,
    };
  }

  factory Task.fromMap(String documentId, Map<String, dynamic> map) {
    return Task(
      id: documentId,
      name: map['name'],
      isCompleted: map['isCompleted'],
      timePeriod: map['timePeriod'],
      createdAt: DateTime.parse(map['createdAt']),
      location: map['location'],
    );
  }
}
