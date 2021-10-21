abstract class Failure {
  final String? message;

  const Failure({this.message});
}

class BadRequestFailure extends Failure {}

class InternalServerFailure extends Failure {
  const InternalServerFailure({required String message})
      : super(message: message);
}

class ConflictFailure extends Failure {}

class UnauthorizedFailure extends Failure {}

class NotFoundFailure extends Failure {}

class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure()
      : super(message: 'No internet connection');
}

class TimeoutFailure extends Failure {}
