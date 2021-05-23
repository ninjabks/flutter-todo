import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks =[
    Task(taskName: 'Long Press to delete task'),
  ];


  //so that we cannot add on tasks
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks) ;
  }

  int getTaskLength(){
    return _tasks.length;
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(String value){
    var idx = tasks.indexOf(value);
    print(idx);
    _tasks.removeAt(idx+1);
    notifyListeners();
  }

  void addTask(String inputTodo){
//    tasks.add(Task(taskName: 'blabal'));         this will not work
     _tasks.add(Task(taskName: inputTodo));
    notifyListeners();
  }

}
