import 'package:either_dart/either.dart';

class Response<T> {
  final Either<T, String> _either;

  Response.success(T data) : this._either = Left<T, String>(data);

  Response.failure(String message) : this._either = Right<T, String>(message);

  void receive(Function(T) onSuccess, Function(String) onFailure) {
    this._either.fold(onSuccess, onFailure);
  }

  bool get isSuccess => this._either.isLeft;

  bool get isFailure => this._either.isRight;

  T get successData => this._either.left;

  String get failureData => this._either.right;
}
