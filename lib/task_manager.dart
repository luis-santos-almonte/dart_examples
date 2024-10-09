import 'task.dart';

class taskManager {
  final List<task> tasks = [];
  int _taskIdCounter = 1;

  void addTask(String name) {
    try {
      task newTask = task(_taskIdCounter++, name);
      tasks.add(newTask);
    } catch (e) {
      print('Error al crear la tarea: $e');
    }
  }
}
