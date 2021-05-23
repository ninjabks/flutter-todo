import 'package:flutter/material.dart';
import 'package:flutter_app_new/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTile ;
  final Function checkboxCallback;

  TaskTile({this.isChecked,this.taskTile,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        print('Longpress: $taskTile');
        Provider.of<TaskData>(context,listen: false).deleteTask(taskTile);
      },
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}


