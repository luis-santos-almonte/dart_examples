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

  void removeTask(int id) {
    try {
      final task = tasks.firstWhere((task) => task.id == id);
      tasks.remove(task);
      print('Tarea eliminada: ID: ${task.id}, Nombre: ${task.name}');
    } catch (e) {
      print('Error: No se encontró una tarea con el ID $id');
    }
  }
}
