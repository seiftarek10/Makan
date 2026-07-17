import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:makan/core/graph_ql/error_handler.dart';
import 'package:makan/features/home/data/data_sources/home_remote_source.dart';
import 'package:makan/features/home/data/models/continent_model.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';
import 'package:makan/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepoImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, List<ContinetEntity>>> getAllContinents() async {
    try {
      final List<ContinentModel> continentsModels = await _remoteDataSource
          .getAllContinents();

      List<ContinetEntity> data = continentsModels
          .map((e) => e.toEntity())
          .toList();
      return right(data);
    } catch (e) {
      if (e is QueryResult) {
        return left(GraphQLFailure.handleError(e));
      }
      return left(Failure(errMessage: e.toString()));
    }
  }
}
