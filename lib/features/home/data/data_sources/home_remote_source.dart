import 'package:makan/features/home/data/models/continent_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<ContinentModel>> getAllContinents();
}
