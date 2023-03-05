import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              CustomBookDetailsAppBar(),
              BookDetailsSectioin(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
