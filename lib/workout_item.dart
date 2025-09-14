import 'package:flutter/material.dart';
import 'model/workout.dart';

class WorkoutItem extends StatelessWidget {
  const WorkoutItem({required this.activity, super.key});

  final Workout activity;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(activity.exerciseName),
              Text(activity.numberOfReps.toString()),
            ],
          ),
          Text(activity.category.toString()),
        ],
      ),
    );
  }
}
