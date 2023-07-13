class Task {
  final String startTime;
  final String endTime;
  bool isDone;

  Task({required this.startTime, required this.endTime, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
