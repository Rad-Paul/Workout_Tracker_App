import 'package:flutter/material.dart';
import 'package:workout_tracker_app/req/templateTracker.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_app/utils/newTemplate_utils.dart';
import 'package:workout_tracker_app/utils/template_utils.dart';

class Workout extends StatelessWidget{
  Templatetracker templatetracker = Templatetracker();

  Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        //scroll for the list of templates
        //grid better performance?
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WorkoutHeader(),
              //My templates text and add template button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('MY TEMPLATES', style: TextStyle(color: Colors.grey, fontSize: 12)),

                  //add template button
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewTemplatePage()));
                    }, 
                    icon: Icon(Icons.add)
                  ),
                ],
              ),
              UserTemplates(),

              //Sample Templates Text
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Text('SAMPLE TEMPLATES', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ),
              SampleTemplates(),
            ],
          ),
        ),
      )
    );
  }
}

class WorkoutHeader extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Workout', style: TextStyle(fontSize: 16, color: Colors.white),),
        SizedBox(height: 30,),
        Text('QUICK START', style: TextStyle(fontSize: 12, color: Colors.grey),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: SizedBox(
            width: double.infinity, //max
            height: 40,
            child: FloatingActionButton(
              onPressed: (){},
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: Text('START AN EMPTY WORKOUT'),
            ),
          ),
        ),
      ],
    );
  }
}
class SampleTemplates extends StatelessWidget{

  Templatetracker tracker = Templatetracker();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tracker.sampleTemplates.map((template){
        return WorkoutTemplateContainer(template: template,);
      }).toList(),
    );
  }
}

class UserTemplates extends StatefulWidget{
  @override
  State<UserTemplates> createState() => _UserTemplatesState();
}
class _UserTemplatesState extends State<UserTemplates> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Templatetracker>(builder: (context, value, child) {
      return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: value.userTemplates.map((template){
        return WorkoutTemplateContainer(template: template,);
      }).toList(),
    );
    },);
  }
}