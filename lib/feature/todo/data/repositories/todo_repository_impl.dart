import 'package:test_flutter/feature/todo/data/datasource/todo_data_source.dart';
import 'package:test_flutter/feature/todo/domain/entities/todo_entities.dart';
import 'package:test_flutter/feature/todo/domain/repositories/todo_reposirory.dart';

class TodoRepositoriesImpl implements TodoRepository {
  final TodoDataSource todoDataSource;

  TodoRepositoriesImpl({required this.todoDataSource});

  @override
  Future<List<TodoEntity>> getTodos() {
    final todos = todoDataSource.getTodos();
    return todos;
  }
  
}