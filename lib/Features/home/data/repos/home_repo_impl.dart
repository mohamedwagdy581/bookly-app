import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';

import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoEmpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoEmpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filter=free-ebook&orderBy=newest&q=sublect:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filter=free-ebook&q=sublect:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
