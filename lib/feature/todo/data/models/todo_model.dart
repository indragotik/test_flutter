import 'package:json_annotation/json_annotation.dart';
import 'package:test_flutter/feature/todo/domain/entities/todo_entities.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel extends TodoEntity{
  TodoModel({
    required super.userId,
    required super.id,
    required super.title,
    required super.completed,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

   Map<String, dynamic> toJson() => _$TodoModelToJson(this);

}