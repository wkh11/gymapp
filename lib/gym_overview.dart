import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/workout_list.dart';
import 'model/workout.dart';

class GymOverview extends StatefulWidget {
  const GymOverview({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GymOverviewState();
  }
}

class GymOverviewState extends State<GymOverview> {
  final List<Workout> _workoutItemList = [
    Workout(
      date: DateTime.now(),
      exerciseName: "Chest Press",
      weight: 175,
      numberOfReps: 5,
      category: BodyGroupCategory.chest,
    ),
    //create list of 3 other workout items
    Workout(
      date: DateTime.now(),
      exerciseName: "Squat",
      weight: 225,
      numberOfReps: 5,
      category: BodyGroupCategory.legs,
    ),
    Workout(
      date: DateTime.now(),
      exerciseName: "Deadlift",
      weight: 315,
      numberOfReps: 5,
      category: BodyGroupCategory.back,
    ),
    Workout(
      date: DateTime.now(),
      exerciseName: "Shoulder Press",
      weight: 95,
      numberOfReps: 5,
      category: BodyGroupCategory.shoulders,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // print(workoutItemList.length);

    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Text("header"),
          WorkoutList(workoutList: _workoutItemList),
        ],
      ),
    );
  }
}
