import 'package:dio/dio.dart';
import 'package:test_flutter/core/utils/api_constans.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_flutter/feature/todo/data/models/todo_model.dart';

part 'todo_data_source.g.dart';

@RestApi(baseUrl: ApiConstans.baseUrl)
abstract class TodoDataSource {
  factory TodoDataSource(Dio dio, {String baseUrl}) = _TodoDataSource;

  @GET(ApiConstans.todo)
  Future<List<TodoModel>> getTodos();
}