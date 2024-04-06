import 'package:d_store/features/shop/screens/home/widgets/shop_home_appbar.dart';
import 'package:flutter/material.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AppBar
            HomeAppBar(),
          ],
        ),
      ),
    );
  }
}
