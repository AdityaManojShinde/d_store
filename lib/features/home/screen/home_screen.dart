import 'package:d_store/features/home/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class _LabelText {
  static const String home = 'Home';
  static const String shop = 'Shop';
  static const String wishList = 'Wishlist';
  static const String profile = 'Profile';
}

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
            NavigationDestination(
                icon: Icon(Iconsax.home), label: _LabelText.home),
            NavigationDestination(
                icon: Icon(Iconsax.shop), label: _LabelText.shop),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: _LabelText.wishList),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: _LabelText.profile),
          ],
        ));
  }
}
