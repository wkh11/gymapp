import 'package:flutter/material.dart';
import 'model/workout.dart';
import 'workout_item.dart';

class WorkoutList extends StatelessWidget {
  WorkoutList({required this.workoutList, super.key});

  final List<Workout> workoutList;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: ListView.builder(
        itemCount: workoutList.length,
        itemBuilder: (context, index) {
          final workoutItem = workoutList[index];
          return WorkoutItem(activity: workoutItem);
        },
      ),
    );
  }
}
