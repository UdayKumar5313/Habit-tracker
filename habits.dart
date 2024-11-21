import 'package:cloud_firestore/cloud_firestore.dart';

class HabitService {
  final CollectionReference habitCollection =
      FirebaseFirestore.instance.collection('habits');

  Future<void> addHabit(Map<String, dynamic> habitData) async {
    await habitCollection.add(habitData);
  }

  Stream<List<Habit>> getHabits() {
    return habitCollection.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Habit.fromMap(doc.data() as Map<String, dynamic>)).toList());
  }
}
