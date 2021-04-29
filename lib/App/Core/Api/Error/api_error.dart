import 'package:pokedex/App/Core/Errors/errors.dart';

class ApiError implements Failure{
  final String message;
  ApiError(this.message);
}