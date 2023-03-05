import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/app_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 55,
        left: 30,
        right: 30,
        bottom: 20,
      ),
      child: Row(children: [
        CloseButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kHomeView);
          },
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 24,
          ),
        ),
      ]),
    );
  }
}
