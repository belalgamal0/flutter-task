enum UserRole {
  viewer,
  editor,
}

extension UserRoleExtension on UserRole {
  String get name {
    switch (this) {
      case UserRole.viewer:
        return 'viewer';
      case UserRole.editor:
        return 'editor';
      default:
        return '';
    }
  }

  static UserRole? fromString(String role) {
    switch (role) {
      case 'viewer':
        return UserRole.viewer;
      case 'editor':
        return UserRole.editor;
      default:
        return null;
    }
  }
}