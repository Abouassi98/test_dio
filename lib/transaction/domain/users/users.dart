import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  factory Users({
    required List<User> items,
  }) = _Users;
  Users._();
  factory Users.fromJson(List<dynamic> json) => _$UsersFromJson({'items': json});
}

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String email,
    required String gender,
    required String status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
