import 'package:either_dart/either.dart';

abstract class UseCase<T,P> {
  Future<Either<T,String>> execute(P params);
}