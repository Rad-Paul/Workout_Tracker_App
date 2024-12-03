import 'package:flutter/material.dart';
import './template_utils.dart';

class CreateNewTemplatePage extends StatelessWidget{
  String newTemplateName = "";

  List<ExerciseTemplate> exercises = [];

  TextEditingController controller = TextEditingController();
  TextEditingController newExerciseController = TextEditingController();

  void getNewExercise(context){
    showDialog(
      context: context, 
      builder: (context){
        return GetExerciseDialogBox(controller: newExerciseController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                    Container(
                      width: 300,
                      child: TextField(
                        controller: controller,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Template name...',
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800])
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){controller.clear();}, icon: Icon(Icons.clear))
                  ],
                ),
              ),

              //Add new exercise button
              Container(
                width: double.infinity,
                child: FloatingActionButton(
                  child: Text('ADD EXERCISE', style: TextStyle(fontSize: 16),),
                  onPressed: (){
                    getNewExercise(context);
                  },
                  elevation: 0,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  foregroundColor: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
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

class GetExerciseDialogBox extends StatelessWidget{
  TextEditingController controller;

  GetExerciseDialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 200,
            height: 105,
            child: Column(
              children: [

                //exercise name input
                TextField(
                  controller: controller,
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    decoration: InputDecoration(
                    hintText: 'Exercise name...',
                    hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800])
                  ),
                ),

                //Save and cancel button row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      child: Text('Cancel', style: TextStyle(fontSize: 12),),
                      onPressed: (){
                        Navigator.pop(context, controller.clear);
                      },
                      elevation: 0,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      foregroundColor: Colors.lightBlue,
                    ),
                    FloatingActionButton(
                      child: Text('Save', style: TextStyle(fontSize: 12),),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      elevation: 0,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      foregroundColor: Colors.lightBlue,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}