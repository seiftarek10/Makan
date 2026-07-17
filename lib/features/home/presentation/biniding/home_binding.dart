import 'package:get/get.dart';
import 'package:makan/core/graph_ql/graph_ql_client_service.dart';
import 'package:makan/features/home/data/data_sources/home_remote_source.dart';
import 'package:makan/features/home/data/data_sources/home_remote_source_impl.dart';
import 'package:makan/features/home/data/repos/home_repo_impl.dart';
import 'package:makan/features/home/domain/repos/home_repo.dart';
import 'package:makan/features/home/domain/use_cases/get_all_continets_use_case.dart';
import 'package:makan/features/home/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemoteDataSource>(
      () => HomeRemoteSourceImpl(Get.find<GraphQLClientService>()),
    );

    Get.lazyPut<HomeRepo>(() => HomeRepoImpl(Get.find<HomeRemoteDataSource>()));
    Get.lazyPut<GetAllContinetsUseCase>(
      () => GetAllContinetsUseCase(Get.find<HomeRepo>()),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(Get.find<GetAllContinetsUseCase>()),
    );
  }
}
