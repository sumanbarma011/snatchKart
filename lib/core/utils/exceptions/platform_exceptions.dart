// Custom exception class to handle various Firebase authentication related errors

class TPlatformException implements Exception {
  final String code;
  TPlatformException(this.code);

  // Get the corresponding message based on the error code
  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'INVALID_LOGIN_CREDENTIALS';
      case 'too-many-requests':
        return 'too-many-requests';
      case 'invalid-argument':
        return 'invalid-argument';
      case 'invalid-password':
        return 'invalid-password';
      case 'invalid-phone-number':
        return 'invalid-phone-number';
      case 'operation-not-allowed':
        return 'operation-not-allowed';
      case 'session-cookie-expired':
        return 'session-cookie-expired';
      case 'uid-already-exits':
        return 'uid-already-exits';
      case 'sign_in_failed':
        return 'sign_in_failed';
      case 'internet-request-failed':
        return 'internet-request-failed';
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
