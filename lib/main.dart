import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/core/network/dio_client.dart';
import 'package:test_flutter/feature/home/presentaion/home_page.dart';
import 'package:test_flutter/feature/todo/data/datasource/todo_data_source.dart';
import 'package:test_flutter/feature/todo/data/repositories/todo_repository_impl.dart';
import 'package:test_flutter/feature/todo/domain/usecase/list_todo.dart';
import 'package:test_flutter/feature/todo/persentation/bloc/todo_bloc.dart';

void main() {
  final dio = DioClient.create();
  // final dio = Dio();
  final todoDataSource = TodoDataSource(dio);
  final repository = TodoRepositoriesImpl(todoDataSource: todoDataSource);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => TodoBloc(
          listTodoUseCase: ListTodo(repository),
        ),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
