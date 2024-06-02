import 'package:checklist/checklist_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'itens_checklist_controller.dart';

class ItensChecklistPage extends StatefulWidget {
  const ItensChecklistPage({super.key});
  static const String ROUTE_PAGE = '/itens-checklist';

  @override
  State<ItensChecklistPage> createState() => _ItensChecklistPageState();
}

class _ItensChecklistPageState extends State<ItensChecklistPage> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ItensChecklistController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itens Checklist Page'),
      ),
      body: GetBuilder<ItensChecklistController>(
        init: ItensChecklistController(),
        builder: (value) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ListView.builder(
              itemCount: controller.aux!.length,
              itemBuilder: (context, index) {
                return  ChecklistRow(
                  onPressChangeColor: () => controller.changeColor(),
                  checkCorrigir: controller.checkCorrigir,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
