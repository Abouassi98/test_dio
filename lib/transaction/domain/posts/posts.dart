import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';
part 'posts.g.dart';

@freezed
class Posts with _$Posts {
  factory Posts({
    required List<Post> items,
  }) = _Posts;
  Posts._();
  factory Posts.fromJson(List<dynamic> json) => _$PostsFromJson({'items': json});
}

@freezed
class Post with _$Post {
  factory Post({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String title,
    required String body,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
