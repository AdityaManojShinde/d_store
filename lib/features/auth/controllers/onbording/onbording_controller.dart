import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBordingCubit extends Cubit<int> {
  OnBordingCubit() : super(0);

  final PageController _controller = PageController();
  PageController get controller => _controller;

  void onPageChange(int index) {
    emit(index);
  }

  void onDotCick(int index) {
    emit(index);
    _controller.jumpToPage(index);
  }

  void skipBtnClick() {
    emit(2);
    _controller.jumpToPage(2);
  }
}
