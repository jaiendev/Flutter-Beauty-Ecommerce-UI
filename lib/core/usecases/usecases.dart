import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:lotus_application/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Either<Failures, Type> call(Params params);
}

abstract class UseCaseFuture<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class Params extends Equatable {
  final Object object;

  const Params({required this.object});

  @override
  List<Object> get props => [object];
}
