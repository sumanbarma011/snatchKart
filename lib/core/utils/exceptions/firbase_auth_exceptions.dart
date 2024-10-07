// Custom exception class to handle various Firebase authentication related errors

class TFirebaseAuthException implements Exception {
  final String code;
  TFirebaseAuthException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'email-already-in-use';
      case 'invalid-email':
        return 'invalid-email';
      case 'weak-password':
        return 'weak-password';
      case 'user-disabled':
        return 'user-disabled';
      case 'user-not-found':
        return 'user-not-found';
      case 'wrong-password':
        return 'wrong-password';
      case 'invalid-verification-code':
        return 'invalid-verification-code';
      case 'invalid-verification-id':
        return 'invalid-verification-id';
      case 'quota-exceeded':
        return 'quota-exceeded';
      case 'email-already-exits':
        return 'email-already-exits';
      case 'provider-already-linked':
        return 'provider-already-linked';
      case 'requires-recent-login':
        return 'requires-recent-login';
      case 'credential-already-in-use':
        return 'credential-already-in-use';
      case 'user-mismatch':
        return 'user-mismatch';
      case 'too-many-requests':
        return 'too-many-requests';

      default:
        return code;
    }
  }
}
