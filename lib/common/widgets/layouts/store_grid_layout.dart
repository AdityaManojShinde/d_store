import 'package:flutter/material.dart';

class StoreGridLayout extends StatelessWidget {
  const StoreGridLayout({
    super.key,
    required this.count,
    this.crossAxisCount = 2,
    this.spacing = 8,
    required this.mainAxisExtent,
    required this.builder,
  });

  final int count, crossAxisCount;
  final double spacing;
  final double mainAxisExtent;
  final Widget? Function(BuildContext context, int index) builder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: count,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount, // defalult -> 2
        mainAxisExtent: mainAxisExtent,
        crossAxisSpacing: spacing, // defalult -> 8
        mainAxisSpacing: spacing,
      ),
      itemBuilder: builder,
    );
  }
}
