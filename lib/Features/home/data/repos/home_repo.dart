import 'package:dartz/dartz.dart';

import '../../../../Core/Errors/failures.dart';
import '../model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
