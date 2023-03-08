import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSectioin extends StatelessWidget {
  const BookDetailsSectioin({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.27,
          ),
          child: const CustomBookImage(
            imageUrl:
                'https://d2gg9evh47fn9z.cloudfront.net/1600px_COLOURBOX5428731.jpg',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyrad Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        // TODO: Add Rating There
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4,
          count: 4,
        ),
        const BooksAction(),
      ],
    );
  }
}
