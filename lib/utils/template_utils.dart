import 'package:flutter/material.dart';

class WorkoutTemplate{
  String name;
  List<ExerciseTemplate> exerciseList;
  WorkoutTemplate({required this.name, required this.exerciseList});
}

class ExerciseTemplate{
  String name;
  double weight;
  List<int> setsAndReps;
  ExerciseTemplate({
    required this.name,
    this.weight = 0,
    required this.setsAndReps,
  });
}

class WorkoutTemplateContainer extends StatelessWidget{
  WorkoutTemplate template;

  WorkoutTemplateContainer({super.key, required this.template});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),    
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right:  20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //template name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(template.name, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                  ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: template.exerciseList.map((exercise){
                  return Text('${exercise.setsAndReps.length} x ${exercise.name}', 
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}