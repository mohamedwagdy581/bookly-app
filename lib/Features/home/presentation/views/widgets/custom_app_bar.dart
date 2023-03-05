import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 55,
        left: 24,
        right: 24,
        bottom: 20,
      ),
      child: Row(children: [
        Image.asset(
          AssetsData.logo,
          height: 20,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        ),
      ]),
    );
  }
}
