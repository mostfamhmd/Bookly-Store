import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(AssetIcons.kClose),
        ),
        SvgPicture.asset(AssetIcons.kShop)
      ],
    );
  }
}
