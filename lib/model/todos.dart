import 'package:meta/meta.dart';
import 'dart:convert';

class Todos {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todos({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Todos copyWith({
    int? userId,
    int? id,
    String? title,
    bool? completed,
  }) =>
      Todos(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        completed: completed ?? this.completed,
      );

  factory Todos.fromRawJson(String str) => Todos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Todos.fromJson(Map<String, dynamic> json) => Todos(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
