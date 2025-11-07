import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/feature/todo/domain/usecase/list_todo.dart';
import 'package:test_flutter/feature/todo/persentation/bloc/todo_event.dart';
import 'package:test_flutter/feature/todo/persentation/bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ListTodo listTodoUseCase;

  TodoBloc({required this.listTodoUseCase}) : super(TodoInitial()) {
    on<GetTodosEvent>(_onGetTodos);
  }

  Future<void> _onGetTodos(
      GetTodosEvent event, Emitter<TodoState> emit) async {
    emit(TodoLoading());
    try {
      final todos = await listTodoUseCase();
      emit(TodoLoaded(todos));
    } catch (e) {
      emit(TodoError('Failed to fetch todos'));
    }
  }
  
}