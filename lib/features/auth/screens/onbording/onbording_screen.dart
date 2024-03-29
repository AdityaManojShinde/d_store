import 'package:d_store/features/auth/controllers/onbording/onbording_controller.dart';
import 'package:d_store/features/auth/screens/onbording/widgets/onbording_next_btn.dart';
import 'package:d_store/features/auth/screens/onbording/widgets/onbording_page_indicator.dart';
import 'package:d_store/features/auth/screens/onbording/widgets/skip_button.dart';
import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/onbording_page.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBordingCubit bloc = BlocProvider.of<OnBordingCubit>(context);
    return Scaffold(
      body: Stack(
        children: [
          // pages
          PageView(
            controller: bloc.controller,
            onPageChanged: (value) {
              context.read<OnBordingCubit>().onPageChange(value);
            },
            children: const [
              OnBordingPage(
                title: AppText.onBordingTitle1,
                subtitle: AppText.onBordingSubTitle1,
                img: ImgAssets.onBording_1,
              ),
              OnBordingPage(
                title: AppText.onBordingTitle2,
                subtitle: AppText.onBordingSubTitle2,
                img: ImgAssets.onBording_2,
              ),
              OnBordingPage(
                title: AppText.onBordingTitle3,
                subtitle: AppText.onBordingSubTitle3,
                img: ImgAssets.onBording_3,
              ),
            ],
          ),
          // SKIP BUTTON
          const SkipButton(),
          // indicator
          const OnBordingPageIndicator(),
          // next btn
          const OnBordingNextBtn(),
        ],
      ),
    );
  }
}
