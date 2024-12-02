import 'package:flutter/material.dart';

class WorkoutTracker with ChangeNotifier{
  List<Text> _pastWorkouts = [Text('Upper-body-1',), Text('Bro-Day'), Text('Lower-Body')];

  List<Text> get pastWorkouts => _pastWorkouts;

  void addWorkout(){
    _pastWorkouts.add(Text('New-Workout'));
    notifyListeners();
  }
}