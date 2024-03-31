// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) => <String, dynamic>{
      'items': instance.items,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'status': instance.status,
    };
