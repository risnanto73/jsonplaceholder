import 'package:meta/meta.dart';
import 'dart:convert';

class Albums {
  final int userId;
  final int id;
  final String title;

  Albums({
    required this.userId,
    required this.id,
    required this.title,
  });

  Albums copyWith({
    int? userId,
    int? id,
    String? title,
  }) =>
      Albums(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
      );

  factory Albums.fromRawJson(String str) => Albums.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Albums.fromJson(Map<String, dynamic> json) => Albums(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
