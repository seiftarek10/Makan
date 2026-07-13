import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLClientService {
  static const String endpoint =
      "https://eu-west-2.cdn.hygraph.com/content/cmr1xkwfb007d06w9dasylx02/master";

  static GraphQLClient createClient() {
    final HttpLink httpLink = HttpLink(endpoint);

    return GraphQLClient(link: httpLink, cache: GraphQLCache());
  }
}
