import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'custom_app_bar.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(label: 'Home', icon: (FaIcon(FontAwesomeIcons.home))),
              NavigationDestination(label: 'Store', icon: (FaIcon(FontAwesomeIcons.cloud))),
              NavigationDestination(label: 'Wishlist', icon: (FaIcon(FontAwesomeIcons.shop))),
              NavigationDestination(label: 'Profile', icon: (FaIcon(FontAwesomeIcons.cartShopping))),
            ]
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens= [
    Container(color: Colors.blue,),
    Container(color: Colors.green,),
    Container(color: Colors.purple,),
    Container(color: Colors.orange,),
  ];
}