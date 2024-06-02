import 'package:get/get.dart';

import 'home/home_bindings.dart';
import 'home/home_page.dart';
import 'itens_checklist/itens_checklist_bindings.dart';
import 'itens_checklist/itens_checklist_page.dart';

class Routers {
  Routers._();
  static final routers = <GetPage>[
    GetPage(
      name: HomePage.ROUTE_PAGE,
      page: () => const HomePage(),
      binding: HomeBindings(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: ItensChecklistPage.ROUTE_PAGE,
      page: () => const ItensChecklistPage(),
      binding: ItensChecklistBindings(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
