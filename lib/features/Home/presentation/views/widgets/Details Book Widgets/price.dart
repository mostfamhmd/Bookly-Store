import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "19.99 ",
          style: AppStyles.kTextStyle18.copyWith(color: Colors.black),
        ),
        Text(
          "€",
          style: AppStyles.kTextStyle15.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
