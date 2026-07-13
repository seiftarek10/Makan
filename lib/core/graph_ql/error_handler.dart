import 'package:graphql_flutter/graphql_flutter.dart';

class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class GraphQLFailure extends Failure {
  GraphQLFailure({required super.errMessage});

  factory GraphQLFailure.handleError(QueryResult result) {
    final exception = result.exception;

    // 1. No internet / Network errors
    if (exception?.linkException != null) {
      if (exception!.linkException is NetworkException) {
        return GraphQLFailure(
          errMessage: "No internet connection. Please check your network.",
        );
      }

      return GraphQLFailure(errMessage: "Network error. Please try again.");
    }

    // 2. GraphQL Errors
    if (exception?.graphqlErrors.isNotEmpty ?? false) {
      final error = exception!.graphqlErrors.first;

      final message = error.message.toLowerCase();

      // Authentication errors
      if (message.contains("unauthorized") ||
          message.contains("authentication") ||
          message.contains("invalid token") ||
          message.contains("token expired") ||
          message.contains("jwt")) {
        return GraphQLFailure(
          errMessage: "Your session expired. Please login again.",
        );
      }

      // Permission errors
      if (message.contains("forbidden") ||
          message.contains("permission") ||
          message.contains("access denied")) {
        return GraphQLFailure(
          errMessage: "You don't have permission to perform this action.",
        );
      }

      // Validation errors
      if (message.contains("validation") ||
          message.contains("invalid input") ||
          message.contains("required") ||
          message.contains("argument")) {
        return GraphQLFailure(errMessage: "Invalid data sent to server.");
      }

      // Not found errors
      if (message.contains("not found") || message.contains("does not exist")) {
        return GraphQLFailure(errMessage: "Requested data was not found.");
      }

      // Duplicate data
      if (message.contains("duplicate") || message.contains("already exists")) {
        return GraphQLFailure(errMessage: "This data already exists.");
      }

      // Rate limit
      if (message.contains("rate limit") ||
          message.contains("too many requests")) {
        return GraphQLFailure(
          errMessage: "Too many requests. Please try later.",
        );
      }

      // Server internal error
      if (message.contains("internal server") ||
          message.contains("internal error") ||
          message.contains("exception")) {
        return GraphQLFailure(
          errMessage: "Server error. Please try again later.",
        );
      }

      // Schema errors
      if (message.contains("cannot query field") ||
          message.contains("unknown field")) {
        return GraphQLFailure(
          errMessage: "Invalid query. Please check your GraphQL request.",
        );
      }

      // Syntax errors
      if (message.contains("syntax") || message.contains("parse")) {
        return GraphQLFailure(errMessage: "GraphQL syntax error.");
      }

      // Default GraphQL error

      return GraphQLFailure(errMessage: error.message);
    }

    // 3. Empty response
    if (result.data == null) {
      return GraphQLFailure(errMessage: "No data received from server.");
    }

    // Unknown error

    return GraphQLFailure(errMessage: "Something went wrong.");
  }
}
