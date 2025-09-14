import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

const uuid = Uuid();

enum BodyGroupCategory { arms, chest, legs, back, shoulders }

//need to learn how to create custom icons
Map<BodyGroupCategory, IconData> bodyGroupMap = {
  BodyGroupCategory.arms: Icons.accessibility_new,
  BodyGroupCategory.back: Icons.sports_basketball,
  BodyGroupCategory.chest: Icons.sports_gymnastics,
  BodyGroupCategory.legs: Icons.sports_football,
  BodyGroupCategory.shoulders: Icons.sports_baseball,
};

class Workout {
  Workout({
    required this.date,
    required this.exerciseName,
    required this.weight,
    required this.numberOfReps,
    required this.category,
  }) : id = Uuid().v4();

  final DateTime date;
  final String exerciseName;
  final int weight;
  final int numberOfReps;
  final BodyGroupCategory category;
  final String id;
}
