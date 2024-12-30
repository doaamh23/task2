import 'dart:io';

import 'task.dart';
import 'toDoManager .dart';
void main(){
   ToDoManager work=ToDoManager();
   bool temp=true; 
    while(temp){
        print('Select one of the following operations :');
        print('1- Add');
        print('2- delete');
        print('3- print');
        print('4- complete');
        String inputChoose= checkingOptions(); 
        switch(inputChoose){
             case '1':
               print('title:');
               String title =stdin.readLineSync()??'';
               print('description:');
               String description =stdin.readLineSync()??'';
               Task task =Task(title, description);
               work.addTask(task);
               break;
             case '2':
                print('index for task remove:');
                int index =int.parse(checkingOptions().toString());
                work.removeTask(index);
                break;
             case '3':
                work.displayTasks();
                break;
             case '4':
                print('index for task completed:');
                int index =int.parse(checkingOptions().toString());
                work.markTaskCompleted(index);
                break;
             default:
                print('Wrong choice');
                break;  
     } 
     temp = choose();
  }
}
checkingOptions(){
  String option=stdin.readLineSync() ?? '';
  if(option==null)
      return '0';
  return option;
}
choose(){
  print('do you want contune:Y or N');
  String input=stdin.readLineSync() ?? '';
  if(input.toUpperCase()=='Y')
     return true;
  return false;
}