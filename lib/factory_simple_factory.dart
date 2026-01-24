main() {
  final guest = UserFactory.createUser(UserType.guest);
  final regular = UserFactory.createUser(UserType.regular);
  final admin = UserFactory.createUser(UserType.admin);

  print(guest);
  print(regular);
  print(admin);
}

// Simple fctory focuses on which object, not how it’s configured
class UserFactory {
  static User createUser(UserType type) {
    return switch (type) {
      UserType.guest => GuestUser._(id: 0, name: 'Guest'),
      UserType.regular => RegularUser._(id: 1, name: 'Regular User'),
      UserType.admin => AdminUser._(id: 2, name: 'Admin User'),
    };
  }
}

abstract interface class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });
}

class GuestUser extends User {
  GuestUser._({
    required super.id,
    required super.name,
  });
}

class RegularUser extends User {
  final bool canCreatePosts;
  final bool canEditOwnPosts;
  final bool canComment;

  RegularUser._({
    required super.id,
    required super.name,
  })  : canCreatePosts = true,
        canEditOwnPosts = true,
        canComment = true;
}

class AdminUser extends User {
  final bool canDeleteUsers;
  final bool canEditAllPosts;
  final bool canManagePermissions;
  final bool canAccessAnalytics;

  AdminUser._({
    required super.id,
    required super.name,
  })  : canDeleteUsers = true,
        canEditAllPosts = true,
        canManagePermissions = true,
        canAccessAnalytics = true;
}

enum UserType {
  guest,
  regular,
  admin,
}
