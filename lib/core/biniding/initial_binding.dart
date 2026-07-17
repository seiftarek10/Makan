import 'package:get/get.dart';
import 'package:makan/core/graph_ql/graph_ql_client_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      GraphQLClientService(),permanent: true
    );
  }
}
