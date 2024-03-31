// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      items: IList<Post>.fromJson(
          json['items'], (value) => Post.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) => <String, dynamic>{
      'items': instance.items.toJson(
        (value) => value,
      ),
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
