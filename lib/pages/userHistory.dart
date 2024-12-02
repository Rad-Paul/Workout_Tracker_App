import 'package:flutter/material.dart';
import 'package:workout_tracker_app/req/workoutTracker.dart';

class UserHistory extends StatefulWidget{
  final String title = 'History';

  const UserHistory({super.key});

  @override
  State<UserHistory> createState() => _UserHistoryState();
}

class _UserHistoryState extends State<UserHistory> {
  WorkoutTracker _tracker = WorkoutTracker();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListenableBuilder(
        listenable: _tracker,
        builder: (BuildContext context, Widget? child){
          return Container(
              width: 200,
              height: 200,
              child: Column(
                children: _tracker.pastWorkouts.toList(),
              ),
            );
        },
      ),
    );
  }
}