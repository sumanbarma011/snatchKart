// Custom exception class to handle various Firebase authentication related errors

class TFormatException implements Exception {
  final String message;

  // associated error message
  const TFormatException(
      [this.message =
          'An unexpected format error occured. Please check your input.']);

//Get the corresponding error message

  String get formattedMessage => message;

//create a format exception from a specific error message'The ema
  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  // Get the corresponding message based on the error code
  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const TFormatException('invalid-email-format');
      case 'invalid-phone-number-format':
        return const TFormatException('invalid-phone-number-format');
      case 'invalid-date-format':
        return const TFormatException('invalid-date-format');
      case 'invalid-url-format':
        return const TFormatException('invalid-url-format');
      case 'invalid-credit-card-format':
        return const TFormatException('invalid-credit-card-format');
      case 'invalid-numeric-format':
        return const TFormatException('invalid-numeric-format');
      default:
        return TFormatException(code);
    }
  }
}
