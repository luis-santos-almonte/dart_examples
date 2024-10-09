import 'dart:io';
import '../lib/task_manager.dart';

void main() {
  final newTaskManager = taskManager();
  bool running = true;

  while (running) {
    print('Selecciona una opción:');
    print('1. Agregar Tarea');
    print('2. Eliminar Tarea');
    print('3. Completar Tarea');
    print('4. Listar Tareas');
    print('5. Salir');

    final choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Ingresa el nombre de la tarea:');
        final taskName = stdin.readLineSync() ?? 'Tarea sin nombre';
        taskManager.addTask(taskName);
        break;
      case '2':
        print('Ingresa el ID de la tarea a eliminar:');
        break;
      case '3':
        print('Ingresa el ID de la tarea a completar:');
        break;
      case '4':
        break;
      case '5':
        running = false;
        break;
      default:
        print('Opción inválida. Inténtalo de nuevo.');
    }
  }
}
