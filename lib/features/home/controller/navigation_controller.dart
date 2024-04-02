import 'package:d_store/features/shop/screens/home/shop_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationControllerCubit extends Cubit<int> {
  NavigationControllerCubit() : super(0);

  final List<Widget> screens = [
    const ShopHomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
  ];

  void update(int index) => emit(index);
}
