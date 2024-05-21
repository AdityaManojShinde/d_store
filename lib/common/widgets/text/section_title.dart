import 'package:d_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class StoreSectionTitle extends StatelessWidget {
  const StoreSectionTitle(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'view all',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.primary),
          ),
        )
      ],
    );
  }
}
