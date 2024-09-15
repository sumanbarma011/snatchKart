// Custom exception class to handle various Firebase authentication related errors

class TFirebaseAuthException implements Exception {
  final String code;
  TFirebaseAuthException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-email':
        return 'The email address is already registered. Please use a different email address';
      case 'weak-password':
        return 'The email address is already registered. Please use a different email address';
      case 'user-disabled':
        return 'The email address is already registered. Please use a different email address';
      case 'user-not-found':
        return 'The email address is already registered. Please use a different email address';
      case 'wrong-password':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-verification-code':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-verification-id':
        return 'The email address is already registered. Please use a different email address';
      case 'quota-exceeded':
        return 'The email address is already registered. Please use a different email address';
      case 'email-already-exits':
        return 'The email address is already registered. Please use a different email address';
      case 'provider-already-linked':
        return 'The email address is already registered. Please use a different email address';
      case 'requires-recent-login':
        return 'The email address is already registered. Please use a different email address';
      case 'credential-already-in-use':
        return 'The email address is already registered. Please use a different email address';
      case 'user-mismatch':
        return 'The email address is already registered. Please use a different email address';
      case 'too-many-requests':
        return 'The email address is already registered. Please use a different email address';

      default:
        return code;
    }
  }
}
