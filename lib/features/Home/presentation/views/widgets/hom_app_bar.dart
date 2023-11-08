import 'package:bookly_store/core/utils/app_router.dart';
import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetIcons.kLogo,
        ),
        IconButton(
          onPressed: () => GoRouter.of(context).push(AppRouter.kSearchView),
          icon: SvgPicture.asset(
            AssetIcons.kSearch,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
