enum TabBarType {
  posts,
  users;

  String get title => switch (this) {
        users => 'users',
        posts => 'posts',
      };
}
