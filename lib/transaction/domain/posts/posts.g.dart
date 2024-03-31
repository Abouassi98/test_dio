// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) => <String, dynamic>{
      'items': instance.items,
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
