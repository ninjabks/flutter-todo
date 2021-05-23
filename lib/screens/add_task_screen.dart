import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_new/models/task.dart';
import 'package:flutter_app_new/models/task_data.dart';
import 'package:provider/provider.dart';


class AddTask extends StatelessWidget {

  String mytext;


  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  textAlign: TextAlign.center,
                // controller: myController,
                onChanged: (value){
                    mytext = value;
                },
              ),
            ),
            Container(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),

              child: TextButton(
                child: Text('Add',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,

                ),),
                onPressed: (){
                  // final task = Task(taskName: mytext);
                  // Provider.of<TaskData>(context).tasks.add(task);
                  print('button pressed');
                  Provider.of<TaskData>(context,listen: false).addTask(mytext);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
