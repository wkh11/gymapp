import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum BodyGroupCategory { arms, chest, legs, back, shoulders }

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
