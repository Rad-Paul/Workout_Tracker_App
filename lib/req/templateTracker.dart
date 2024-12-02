import 'package:flutter/material.dart';
import '../utils/template_utils.dart';
class Templatetracker with ChangeNotifier{
  static final List<WorkoutTemplate> _sampleTemplates = [
    WorkoutTemplate(name: 'Legs', 
      exerciseList:[
        ExerciseTemplate(name: 'Squat', setsAndReps:[12, 10, 8], weight: 50),
        ExerciseTemplate(name: 'Leg Extension', setsAndReps: [15, 15, 12], weight: 40),
        ExerciseTemplate(name: 'Hip Raises', setsAndReps: [12, 10, 8], weight: 20),
        ExerciseTemplate(name: 'Squat', setsAndReps:[12, 10, 8], weight: 50),
        ExerciseTemplate(name: 'Leg Extension', setsAndReps: [15, 15, 12], weight: 40),
        ExerciseTemplate(name: 'Hip Raises', setsAndReps: [12, 10, 8], weight: 20),
        ExerciseTemplate(name: 'Squat', setsAndReps:[12, 10, 8], weight: 50),
        ExerciseTemplate(name: 'Leg Extension', setsAndReps: [15, 15, 12], weight: 40),
        ExerciseTemplate(name: 'Hip Raises', setsAndReps: [12, 10, 8], weight: 20),
      ]),
    WorkoutTemplate(name: 'Strong 5x5', 
      exerciseList:[
        ExerciseTemplate(name: 'Squat', setsAndReps:[5, 5, 5, 5, 5], weight: 70),
        ExerciseTemplate(name: 'Overhead Press', setsAndReps: [5, 5, 5, 5, 5], weight: 30),
        ExerciseTemplate(name: 'Bench Press', setsAndReps: [5, 5, 5, 5, 5], weight: 60),
    ]),
    WorkoutTemplate(name: 'Back and Biceps', 
      exerciseList:[
        ExerciseTemplate(name: 'Bent Over Row(Barbell)', setsAndReps:[12, 10, 8], weight: 30),
        ExerciseTemplate(name: 'Lat pulldown', setsAndReps: [12, 10, 8], weight: 40),
        ExerciseTemplate(name: 'Biceps Curl(Barbell)', setsAndReps: [16, 12, 8], weight: 25),
        ExerciseTemplate(name: 'Hammer Curl', setsAndReps: [15, 15], weight: 15),
    ]),
    WorkoutTemplate(name: 'Abs', 
      exerciseList:[
        ExerciseTemplate(name: 'Hanging Leg Raise', setsAndReps:[12, 12, 12]),
        ExerciseTemplate(name: 'Decline Crunch', setsAndReps: [20, 20, 20, 20], weight: 5),
    ]),
    WorkoutTemplate(name: 'Back and Biceps', 
      exerciseList:[
        ExerciseTemplate(name: 'Bent Over Row(Barbell)', setsAndReps:[12, 10, 8], weight: 30),
        ExerciseTemplate(name: 'Lat pulldown', setsAndReps: [12, 10, 8], weight: 40),
        ExerciseTemplate(name: 'Biceps Curl(Barbell)', setsAndReps: [16, 12, 8], weight: 25),
        ExerciseTemplate(name: 'Hammer Curl', setsAndReps: [15, 15], weight: 15),
    ]),
    WorkoutTemplate(name: 'Back and Biceps', 
      exerciseList:[
        ExerciseTemplate(name: 'Bent Over Row(Barbell)', setsAndReps:[12, 10, 8], weight: 30),
        ExerciseTemplate(name: 'Lat pulldown', setsAndReps: [12, 10, 8], weight: 40),
        ExerciseTemplate(name: 'Biceps Curl(Barbell)', setsAndReps: [16, 12, 8], weight: 25),
        ExerciseTemplate(name: 'Hammer Curl', setsAndReps: [15, 15], weight: 15),
    ]),
    WorkoutTemplate(name: 'Back and Biceps', 
      exerciseList:[
        ExerciseTemplate(name: 'Bent Over Row(Barbell)', setsAndReps:[12, 10, 8], weight: 30),
        ExerciseTemplate(name: 'Lat pulldown', setsAndReps: [12, 10, 8], weight: 40),
        ExerciseTemplate(name: 'Biceps Curl(Barbell)', setsAndReps: [16, 12, 8], weight: 25),
        ExerciseTemplate(name: 'Hammer Curl', setsAndReps: [15, 15], weight: 15),
    ]),
    WorkoutTemplate(name: 'Back and Biceps', 
      exerciseList:[
        ExerciseTemplate(name: 'Bent Over Row(Barbell)', setsAndReps:[12, 10, 8], weight: 30),
        ExerciseTemplate(name: 'Lat pulldown', setsAndReps: [12, 10, 8], weight: 40),
        ExerciseTemplate(name: 'Biceps Curl(Barbell)', setsAndReps: [16, 12, 8], weight: 25),
        ExerciseTemplate(name: 'Hammer Curl', setsAndReps: [15, 15], weight: 15),
    ]),
  ];
  List<WorkoutTemplate> _userTemplates = [];
  void addNewTemplate(String name, List<ExerciseTemplate> exerciseList){
    userTemplates.add(WorkoutTemplate(name: name, exerciseList: exerciseList));
    notifyListeners();
  }

  List<WorkoutTemplate> get sampleTemplates => _sampleTemplates;
  List<WorkoutTemplate> get userTemplates => _userTemplates;
}