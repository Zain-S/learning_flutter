import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Tasks {
  String? id;
  String? createdAt;
  String? name;
  String? avatar;

  Tasks({this.id, this.createdAt, this.name, this.avatar});

  Tasks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    name = json['name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['name'] = name;
    data['avatar'] = avatar;
    return data;
  }

  @override
  String toString() {
    return 'Tasks{id: $id, createdAt: $createdAt, name: $name, avatar: $avatar}';
  }
}
