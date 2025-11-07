import 'package:test_flutter/feature/todo/domain/entities/todo_entities.dart';

abstract class TodoRepository {
  Future<List<TodoEntity>> getTodos();
}