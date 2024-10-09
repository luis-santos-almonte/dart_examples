import 'task.dart';

class taskManager {
  List<task> tasks = [];
  int _taskIdCounter = 1;

  void addTask(String name) {
    task newTask = task(_taskIdCounter++, name);
    tasks.add(newTask);
  }
}
