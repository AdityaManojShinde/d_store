import 'package:d_store/features/home/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<NavigationControllerCubit>();
    return Scaffold(
        body: controller.screens[controller.state],
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.state,
          onDestinationSelected: (index) {
            context.read<NavigationControllerCubit>().update(index);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ));
  }
}
