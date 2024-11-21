import 'package:flutter/material.dart';
import '../widgets/habit_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> habits = [
    {'title': 'Meditation', 'description': '15 minutes daily', 'streak': 5},
    {'title': 'Exercise', 'description': '30 minutes workout', 'streak': 10},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker')),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (ctx, i) => HabitCard(
          title: habits[i]['title'],
          description: habits[i]['description'],
          streak: habits[i]['streak'],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-habit');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
