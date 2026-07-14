
import 'package:get/state_manager.dart';
import 'package:makan/core/graph_ql/error_handler.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';
import 'package:makan/features/home/domain/use_cases/get_all_continets_use_case.dart';

class HomeController extends GetxController {
  final GetAllContinetsUseCase _useCase;

  HomeController(this._useCase);
  RxBool isLoading = RxBool(false);

  RxString errMessage = RxString('');

  RxList<ContinetEntity> continents = RxList(<ContinetEntity>[]);

  Future<void> getContinets() async {
    isLoading.value = true;
    var result = await _useCase.call();
    result.fold(
      ((failure) {
        Failure(errMessage: errMessage.value = failure.errMessage);
        isLoading.value = false;
      }),
      (data) {
        continents.assignAll(data);
        isLoading.value = false;
      },
    );
  }

  @override
  void onInit() async {
    super.onInit();
    await getContinets();
  }
}
