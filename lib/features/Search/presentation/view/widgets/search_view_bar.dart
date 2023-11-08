// ignore_for_file: avoid_unnecessary_containers

import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/features/Search/presentation/view/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SearchViewBar extends StatelessWidget {
  const SearchViewBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: SvgPicture.asset(
              AssetIcons.kBack,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          const Expanded(child: SearchField()),
        ],
      ),
    );
  }
}
