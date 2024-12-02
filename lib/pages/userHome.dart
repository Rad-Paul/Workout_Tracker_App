import 'package:flutter/material.dart';

class UserHome extends StatelessWidget{
  final String title = 'Workout';

  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Workout', style: TextStyle(fontSize: 16),),
      ],
    );
  }
}