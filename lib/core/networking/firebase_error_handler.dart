import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Firebase Error Handling

enum FirebaseErrorType {
  auth,
  firestore,
  storage,
  defaultError,
}

class FirebaseResponseCode {
  // Auth Errors
  static const String EMAIL_ALREADY_IN_USE = "email-already-in-use";
  static const String USER_NOT_FOUND = "user-not-found";
  static const String WRONG_PASSWORD = "wrong-password";
  static const String USER_DISABLED = "user-disabled";
  static const String TOO_MANY_REQUESTS = "too-many-requests";
  static const String OPERATION_NOT_ALLOWED = "operation-not-allowed";
  static const String INVALID_EMAIL = "invalid-email";
  static const String INVALID_CREDENTIAL = "invalid-credential";

  // Firestore Errors
  static const String PERMISSION_DENIED = "permission-denied";
  static const String NOT_FOUND = "not-found";
  static const String UNAVAILABLE = "unavailable";

  // Storage Errors
  static const String OBJECT_NOT_FOUND = "object-not-found";
  static const String UNAUTHORIZED = "unauthorized";
  static const String QUOTA_EXCEEDED = "quota-exceeded";
  static const String CANCELED = "canceled";

  // FCM Errors
  static const String INVALID_ARGUMENT = "invalid-argument";
  static const String MESSAGE_RATE_EXCEEDED = "messaging/message-rate-exceeded";
}

class FirebaseErrorMessages {
  static const String EMAIL_ALREADY_IN_USE = "This email is already in use.";
  static const String USER_NOT_FOUND = "User not found.";
  static const String WRONG_PASSWORD = "Incorrect password.";
  static const String USER_DISABLED = "The user account has been disabled.";
  static const String TOO_MANY_REQUESTS =
      "Too many requests. Please try again later.";
  static const String OPERATION_NOT_ALLOWED = "Operation not allowed.";
  static const String INVALID_EMAIL = "Invalid email address.";
  static const String INVALID_CREDENTIAL =
      "The auth credential is incorrect, Check your Password and Email.";

  static const String PERMISSION_DENIED =
      "You don't have permission to access this resource.";
  static const String FIRESTORE_NOT_FOUND = "Document not found.";
  static const String UNAVAILABLE =
      "Service is currently unavailable. Please try again later.";

  static const String OBJECT_NOT_FOUND = "The requested file does not exist.";
  static const String UNAUTHORIZED =
      "You are not authorized to access this resource.";
  static const String QUOTA_EXCEEDED =
      "Quota exceeded. Please try again later.";
  static const String CANCELED = "The operation was canceled.";

  static const String INVALID_ARGUMENT = "Invalid argument provided.";
  static const String MESSAGE_RATE_EXCEEDED =
      "Message rate exceeded. Please try again later.";

  static const String DEFAULT_ERROR = "An unknown error occurred.";
}

class FirebaseErrorHandler implements Exception {
  late String message;

  FirebaseErrorHandler.handle(dynamic error, FirebaseErrorType type) {
    switch (type) {
      case FirebaseErrorType.auth:
        message = _handleAuthError(error);
        break;
      case FirebaseErrorType.firestore:
        message = _handleFirestoreError(error);
        break;
      case FirebaseErrorType.storage:
        message = _handleStorageError(error);
        break;
      default:
        message = FirebaseErrorMessages.DEFAULT_ERROR;
    }
  }

  String _handleAuthError(FirebaseAuthException error) {
    switch (error.code) {
      case FirebaseResponseCode.EMAIL_ALREADY_IN_USE:
        return FirebaseErrorMessages.EMAIL_ALREADY_IN_USE;
      case FirebaseResponseCode.USER_NOT_FOUND:
        return FirebaseErrorMessages.USER_NOT_FOUND;
      case FirebaseResponseCode.WRONG_PASSWORD:
        return FirebaseErrorMessages.WRONG_PASSWORD;
      case FirebaseResponseCode.USER_DISABLED:
        return FirebaseErrorMessages.USER_DISABLED;
      case FirebaseResponseCode.TOO_MANY_REQUESTS:
        return FirebaseErrorMessages.TOO_MANY_REQUESTS;
      case FirebaseResponseCode.OPERATION_NOT_ALLOWED:
        return FirebaseErrorMessages.OPERATION_NOT_ALLOWED;
      case FirebaseResponseCode.INVALID_EMAIL:
        return FirebaseErrorMessages.INVALID_EMAIL;
      case FirebaseResponseCode
            .INVALID_CREDENTIAL: // OAuth credential is malformed or expired
        return FirebaseErrorMessages.INVALID_CREDENTIAL;
      default:
        return FirebaseErrorMessages.DEFAULT_ERROR;
    }
  }

  String _handleFirestoreError(FirebaseException error) {
    switch (error.code) {
      case FirebaseResponseCode.PERMISSION_DENIED:
        return FirebaseErrorMessages.PERMISSION_DENIED;
      case FirebaseResponseCode.NOT_FOUND:
        return FirebaseErrorMessages.FIRESTORE_NOT_FOUND;
      case FirebaseResponseCode.UNAVAILABLE:
        return FirebaseErrorMessages.UNAVAILABLE;
      default:
        return FirebaseErrorMessages.DEFAULT_ERROR;
    }
  }

  String _handleStorageError(FirebaseException error) {
    switch (error.code) {
      case FirebaseResponseCode.OBJECT_NOT_FOUND:
        return FirebaseErrorMessages.OBJECT_NOT_FOUND;
      case FirebaseResponseCode.UNAUTHORIZED:
        return FirebaseErrorMessages.UNAUTHORIZED;
      case FirebaseResponseCode.QUOTA_EXCEEDED:
        return FirebaseErrorMessages.QUOTA_EXCEEDED;
      case FirebaseResponseCode.CANCELED:
        return FirebaseErrorMessages.CANCELED;
      default:
        return FirebaseErrorMessages.DEFAULT_ERROR;
    }
  }
}
