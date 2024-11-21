import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  final String title;
  final String description;
  final int streak;

  const HabitCard({
    Key? key,
    required this.title,
    required this.description,
    required this.streak,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Text('Streak: $streak'),
      ),
    );
  }
}
