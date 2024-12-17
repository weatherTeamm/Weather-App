import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_project/core/networking/firebase_error_handler.dart';
part 'firebase_result.freezed.dart';

@Freezed()
abstract class FirebaseResult<T> with _$FirebaseResult<T> {
  const factory FirebaseResult.success(T data) = Success<T>;
  const factory FirebaseResult.failure(FirebaseErrorHandler errorHandler) =
      Failure<T>;
}
