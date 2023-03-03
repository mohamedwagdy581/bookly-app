import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return const FeaturedListViewItem();
        }),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
      ),
    );
  }
}
