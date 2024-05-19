import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromoBannerCubit extends Cubit<int> {
  PromoBannerCubit() : super(0);
  final PageController _controller = PageController();
  final CarouselController _caroselController = CarouselController();

  PageController get controller => _controller;

  CarouselController get caroselController => _caroselController;

  void updateCubit(int index) => emit(index);
}
