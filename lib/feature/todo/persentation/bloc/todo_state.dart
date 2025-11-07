import 'package:test_flutter/feature/todo/domain/entities/todo_entities.dart';

abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<TodoEntity> todos;

  TodoLoaded(this.todos);
}

class TodoSuccess extends TodoState {
  final String message;

  TodoSuccess(this.message);
}

class TodoError extends TodoState {
  final String message;

  TodoError(this.message);
}
