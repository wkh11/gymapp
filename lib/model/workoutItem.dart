import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum BodyGroupCategory { arms, chest, legs, back, shoulders }

class Workoutitem {
  Workoutitem(this.date, this.exerciseName, this.numberOfReps, this.category)
    : id = Uuid().v4();

  final DateTime date;
  final String exerciseName;
  final int numberOfReps;
  final BodyGroupCategory category;
  final String id;
}
