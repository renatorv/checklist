import 'package:get/get.dart';
import './itens_checklist_controller.dart';

class ItensChecklistBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ItensChecklistController());
    }
}