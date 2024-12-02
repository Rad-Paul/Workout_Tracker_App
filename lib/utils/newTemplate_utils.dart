import 'package:flutter/material.dart';
import './template_utils.dart';

class CreateNewTemplate extends StatelessWidget{
  String newTemplateName = "";

  List<ExerciseTemplate> exercises = [];

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New workout template', style: TextStyle(color: Colors.white60, fontSize: 12),),
              TextButton(onPressed: (){}, child: Text('SAVE', style: TextStyle(color: Colors.white, fontSize: 14),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                TextField(
                  controller: controller,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Template name...',
                    hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800])
                  ),
                ),
                IconButton(onPressed: (){controller.clear();}, icon: Icon(Icons.clear))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CreateNewExercise extends StatefulWidget{

  String exerciseName;

  CreateNewExercise({super.key, required this.exerciseName});

  @override
  State<CreateNewExercise> createState() => _CreateNewExerciseState();
}

class _CreateNewExerciseState extends State<CreateNewExercise> {
  List<ExerciseTemplate> exercises = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Exercise name
          Row(
            children: [Text(widget.exerciseName), IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))],
          ),

          //Sets, Weight and Reps
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //set index
              Column(
                children: [

                ],
              ),

              //Kgs
              Column(
                children: [
                  
                ],
              ),

              //Reps
              Column(
                children: [
                  
                ],
              ),
            ],
          ),

          //Add set button
          TextButton(onPressed: (){}, child: Text('Add set'))
        ],
      ),
    );
  }
}