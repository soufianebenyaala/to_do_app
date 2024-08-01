// ignore_for_file: public_member_api_docs, sort_constructors_first

class TaskModel {
  String label;
  bool value;
  TaskModel({
    required this.label,
    required this.value,
  });
}

List<TaskModel> tasks = [
  TaskModel(label: 'Morning Workout', value: false),
  TaskModel(label: 'Breakfast', value: true),
  TaskModel(label: 'Check Emails', value: false),
  TaskModel(label: 'Team Meeting', value: true),
  TaskModel(label: 'Lunch Break', value: false),
  TaskModel(label: 'Finish Report', value: false),
  TaskModel(label: 'Pick up Groceries', value: true),
  TaskModel(label: 'Read a Book', value: false),
  TaskModel(label: 'Dinner with Family', value: true),
  TaskModel(label: 'Plan Next Day', value: false),
];
