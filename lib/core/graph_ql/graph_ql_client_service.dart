import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLClientService {
  final String _endpoint =
      "https://eu-west-2.cdn.hygraph.com/content/cmr1xkwfb007d06w9dasylx02/master";

  GraphQLClient createClient() {
    final HttpLink httpLink = HttpLink(_endpoint);

    return GraphQLClient(link: httpLink, cache: GraphQLCache());
  }
}
