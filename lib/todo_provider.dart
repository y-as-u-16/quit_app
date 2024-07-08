import 'package:flutter/material.dart';
import 'todo.dart';
import 'package:uuid/uuid.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];
  final uuid = const Uuid();

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(
      id: uuid.v4(),
      title: title,
    ));
    notifyListeners();
  }

  void removeTodo(String id) {
    _todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }
}
