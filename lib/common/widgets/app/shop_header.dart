import 'package:d_store/common/widgets/clip/curved_edges_header.dart';
import 'package:d_store/common/widgets/shapes/circular_container.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

// shophomeheader => shopHomeAppBar

class DAppHeader extends StatelessWidget {
  const DAppHeader({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return CurvedEdgesHeader(
      child: Container(
        color: isDark ? AppColors.dark : AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                    backgroundColor: Colors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: Colors.white.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
