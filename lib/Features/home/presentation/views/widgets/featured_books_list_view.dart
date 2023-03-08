import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Widgets/custom_error_widget.dart';
import '../../../../../Core/Widgets/custom_loading_indicator.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks!.thumbnail,
                  ),
                );
              }),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksErrorState) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
