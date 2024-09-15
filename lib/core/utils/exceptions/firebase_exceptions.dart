// Custom exception class to handle various Firebase authentication related errors

class TFirebaseException implements Exception {
  final String code;
  TFirebaseException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-custom-token':
        return 'The email address is already registered. Please use a different email address';
      case 'custom-token-mismatch':
        return 'The email address is already registered. Please use a different email address';
      case 'user-disabled':
        return 'The email address is already registered. Please use a different email address';
      case 'user-not-found':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-email':
        return 'The email address is already registered. Please use a different email address';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email address';
      case 'wrong-password':
        return 'The email address is already registered. Please use a different email address';
      case 'weak-password':
        return 'The email address is already registered. Please use a different email address';
      case 'provider-already-linked':
        return 'The email address is already registered. Please use a different email address';
      case 'operation-not-allowed':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-verification-code':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-credential':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-verification-id':
        return 'The email address is already registered. Please use a different email address';
      case 'captcha-check-failed':
        return 'The email address is already registered. Please use a different email address';
      case 'app-not-authorized':
        return 'The email address is already registered. Please use a different email address';
      case 'keychain-error':
        return 'The email address is already registered. Please use a different email address';
      case 'internal-error':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-app-credential':
        return 'The email address is already registered. Please use a different email address';

      default:
        return code;
    }
  }
}
