// Custom exception class to handle various Firebase authentication related errors

class TPlatformException implements Exception {
  final String code;
  TPlatformException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'The email address is already registered. Please use a different email address';
      case 'too-many-requests':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-argument':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-password':
        return 'The email address is already registered. Please use a different email address';
      case 'invalid-phone-number':
        return 'The email address is already registered. Please use a different email address';
      case 'operation-not-allowed':
        return 'The email address is already registered. Please use a different email address';
      case 'session-cookie-expired':
        return 'The email address is already registered. Please use a different email address';
      case 'uid-already-exits':
        return 'The email address is already registered. Please use a different email address';
      case 'sign_in_failed':
        return 'The email address is already registered. Please use a different email address';
      case 'internet-request-failed':
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
