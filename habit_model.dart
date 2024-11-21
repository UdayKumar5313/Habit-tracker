class Habit {
  final String id;
  final String title;
  final String description;
  final int streak;
  final bool isCompleted;

  Habit({
    required this.id,
    required this.title,
    required this.description,
    required this.streak,
    this.isCompleted = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'streak': streak,
      'isCompleted': isCompleted,
    };
  }

  static Habit fromMap(Map<String, dynamic> map) {
    return Habit(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      streak: map['streak'],
      isCompleted: map['isCompleted'],
    );
  }
}
