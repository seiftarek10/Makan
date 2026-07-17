import 'package:dartz/dartz.dart';
import 'package:makan/core/graph_ql/error_handler.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ContinetEntity>>> getAllContinents();
}
