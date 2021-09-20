import 'package:tradly_grocery_app/domain/model/response.dart';

abstract class UseCase<T,P> {
  Future<Response<T>> execute(P params);
}