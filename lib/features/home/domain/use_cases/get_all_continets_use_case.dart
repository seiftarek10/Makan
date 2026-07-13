import 'package:dartz/dartz.dart';
import 'package:makan/core/graph_ql/error_handler.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';
import 'package:makan/features/home/domain/repos/home_repo.dart';

class GetAllContinetsUseCase {
  final HomeRepo _homeRepo;
  const GetAllContinetsUseCase(this._homeRepo);

  Future<Either<Failure, List<ContinetEntity>>> call() async {
    return await _homeRepo.getAllContinents();
  }
}
