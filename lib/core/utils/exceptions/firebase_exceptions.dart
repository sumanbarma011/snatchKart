// Custom exception class to handle various Firebase authentication related errors

class TFirebaseException implements Exception {
  final String code;
  TFirebaseException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'unknown';
      case 'invalid-custom-token':
        return 'invalid-custom-token';
      case 'custom-token-mismatch':
        return 'custom-token-mismatch';
      case 'user-disabled':
        return 'user-disabled';
      case 'user-not-found':
        return 'user-not-found';
      case 'invalid-email':
        return 'invalid-email';
      case 'email-already-in-use':
        return 'email-already-in-use';
      case 'wrong-password':
        return 'wrong-password';
      case 'weak-password':
        return 'weak-password';
      case 'provider-already-linked':
        return 'provider-already-linkeds';
      case 'operation-not-allowed':
        return 'operation-not-allowed';
      case 'invalid-verification-code':
        return 'invalid-verification-code';
      case 'invalid-credential':
        return 'invalid-credential';
      case 'invalid-verification-id':
        return 'invalid-verification-id';
      case 'captcha-check-failed':
        return 'captcha-check-failed';
      case 'app-not-authorized':
        return 'app-not-authorized';
      case 'keychain-error':
        return 'keychain-error';
      case 'internal-error':
        return 'internal-error';
      case 'invalid-app-credential':
        return 'invalid-app-credential';

      default:
        return code;
    }
  }
}
