import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return const CustomBookImage(
            imageUrl:
                'https://d2gg9evh47fn9z.cloudfront.net/1600px_COLOURBOX5428731.jpg',
          );
        }),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
      ),
    );
  }
}
