import 'package:flutter/material.dart';
import 'package:flutter_app_new/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_new/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(itemBuilder: (context,index){
          return TaskTile(
              taskTile: taskData.tasks[index].taskName,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (bool checkboxState){
                taskData.updateTask(taskData.tasks[index]);
              }
          );
        },
          itemCount: taskData.getTaskLength(),
        );
    },

    );
  }
}