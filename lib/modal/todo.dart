class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning excersise', isDone: true),
      Todo(id: '02', todoText: 'Dance excersise', isDone: false),
      Todo(id: '03', todoText: 'Breakfast', isDone: false),
      Todo(id: '04', todoText: 'Morning excersise', isDone: true),
    ];
  }
}
