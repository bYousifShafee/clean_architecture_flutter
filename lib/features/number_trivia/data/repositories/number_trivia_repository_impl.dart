import 'package:clean_flutter/core/platform/network_info.dart';
import 'package:clean_flutter/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_flutter/features/number_trivia/data/datasources/number_trivia_remote_datasourse.dart';
import 'package:clean_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_flutter/core/error/failures.dart';
import 'package:clean_flutter/features/number_trivia/domain/repositories/number_tivia_repository.dart';
import 'package:dartz/dartz.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {

  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    throw UnimplementedError();
  }
}
