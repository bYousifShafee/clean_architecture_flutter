import 'package:clean_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_flutter/features/number_trivia/domain/repositories/number_tivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:clean_flutter/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<NumberTriviaRepository>()])
import 'get_number_trivia_test.mocks.dart';

void main() {

  GetConcreteNumberTrivia? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia number from the repository',
  () async {

    // arrange
    when(mockNumberTriviaRepository!.getConcreteNumberTrivia(any))
    .thenAnswer((_) async => const Right(tNumberTrivia));

    // act
    final result = await usecase!(const Params(number: tNumber));

    // assert
    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository!.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);

  });
}
