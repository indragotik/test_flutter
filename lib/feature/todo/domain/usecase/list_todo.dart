import 'package:test_flutter/feature/todo/domain/entities/todo_entities.dart';
import 'package:test_flutter/feature/todo/domain/repositories/todo_reposirory.dart';

class ListTodo {
  final TodoRepository repository;

  ListTodo(this.repository);

  Future<List<TodoEntity>> call() async {
    return await repository.getTodos();
  }
}