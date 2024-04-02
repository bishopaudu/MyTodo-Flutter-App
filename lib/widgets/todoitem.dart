import 'package:flutter/material.dart';
import 'package:mytodos/constants/colors.dart';
import '../modal/todo.dart';

class Todoitem extends StatelessWidget {
  final Todo todo;
  // ignore: prefer_typing_uninitialized_variables
  final onTodoChnage;
  // ignore: prefer_typing_uninitialized_variables
  final onDeleteItem;
  const Todoitem(
      {super.key,
      required this.todo,
      required this.onDeleteItem,
      required this.onTodoChnage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodoChnage(todo);
          print(todo.id);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading:
            Icon(todo.isDone ? Icons.check_box : Icons.check_box_outline_blank),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todo.id);
              print( 'deleted ${todo.id}');
            },
            icon: const Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
