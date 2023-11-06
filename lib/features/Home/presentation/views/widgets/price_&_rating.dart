import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/rating_best_seller.dart';
import 'package:flutter/material.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "19.99",
          style: AssetStyles.kTextStyle20,
        ),
        Text(
          " €",
          style: AssetStyles.kTextStyle15,
        ),
        const Spacer(),
        const RatingBestSeller()
      ],
    );
  }
}
