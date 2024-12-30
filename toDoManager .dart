import 'task.dart';
class ToDoManager {
  List allTasks=[];
   addTask(Task task){
      allTasks.add(task);
  }
  removeTask(int taskId){
    for(int i=0;i<allTasks.length;i++){
      if(taskId==i)
        allTasks.removeAt(i);
    }
  }
  	displayTasks(){
     for(int i=0;i<allTasks.length;i++){
      print(allTasks[i]);
    }
    }
  	markTaskCompleted(int taskId){
      for(int i=0;i<allTasks.length;i++){
      if(taskId==i)
        allTasks[i].isCompleted=true;
    }
    }
}