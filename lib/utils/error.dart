import 'logger.dart';

class ExceptionHelper {
  static Exception getHttpException(int statusCode) {
    switch (statusCode) {
      case 300:
        logger.e('Multiple Choices: $statusCode');
        return Exception('Multiple Choices: $statusCode');
      case 301:
        logger.e('Moved Permanently: $statusCode');
        return Exception('Moved Permanently: $statusCode');
      case 400:
        logger.e('Bad Request: $statusCode');
        return Exception('Bad Request: $statusCode');
      case 401:
        logger.e('Unauthorized: $statusCode');
        return Exception('Unauthorized: $statusCode');
      case 404:
        logger.e('Not Found: $statusCode');
        return Exception('Not Found: $statusCode');
      case 500:
        logger.e('Internal Server Error: $statusCode');
        return Exception('Internal Server Error: $statusCode');
      default:
        return Exception('Unexpected Error: $statusCode');
    }
  }
}
