//this is a task manager project

class task {
  int id;
  String name;
  bool isCompleted;

  task(this.id, this.name) : isCompleted = false;

  void complete() {
    isCompleted = true;
  }
}