import 'package:app_delivery/app/modules/dashboard/controller.dart';
import 'package:app_delivery/app/modules/home/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          onDestinationSelected: controller.changePageIndex,
          selectedIndex: controller.currentPageIndex.value,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Inicio',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              label: 'Buscar',
              selectedIcon: Icon(Icons.search),
            ),
            NavigationDestination(
              icon: Icon(Icons.view_list_outlined),
              label: 'Meus Pedidos',
              selectedIcon: Icon(Icons.view_list),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              label: 'Meu Perfil',
              selectedIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentPageIndex.value,
          children: [
            HomePage(),
            Text('Buscar'),
            Text('Meus pedidos'),
            Text('Meu perfil'),
          ],
        ),
      ),
    );
  }
}
