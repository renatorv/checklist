import 'package:get/get.dart';

import '../checklist_model.dart';

class ItensChecklistController extends GetxController {
  RxList<ChecklistModel> listaChecklistModel = <ChecklistModel>[].obs;
  Map<int?, List<ChecklistModel>> groupServices = {};
  RxBool checkCorrigir = false.obs;
  List<ChecklistModel>? aux = [];
  String title = '';

  @override
  void onInit() {
    listaChecklistModel.value = Get.arguments[0];
    groupServices = Get.arguments[1];
    aux = Get.arguments[2];

    title = aux![0].grupo!;

    super.onInit();
  }

  changeColor() {
    checkCorrigir.value = !checkCorrigir.value;
    update();
  }
}
