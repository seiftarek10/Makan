import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:makan/core/graph_ql/graph_ql_client_service.dart';
import 'package:makan/features/home/data/data_sources/home_remote_source.dart';
import 'package:makan/features/home/data/models/continent_model.dart';

class HomeRemoteSourceImpl implements HomeRemoteDataSource {
  final GraphQLClientService _clientService;

  HomeRemoteSourceImpl(this._clientService);
  @override
  Future<List<ContinentModel>> getAllContinents() async {
    var client = _clientService.createClient();
    var result = await client.query(
      QueryOptions(
        document: gql(r'''
query{
  continents{
    id
    name
    internetImage
  }
}
'''),
      ),
    );

    List<ContinentModel> data = (result.data!['continents'] as List)
        .map((e) => ContinentModel.fromJson(e))
        .toList();

    return data;
  }
}
