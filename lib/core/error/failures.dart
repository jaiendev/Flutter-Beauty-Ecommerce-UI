import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class CannotFoundItem extends Failures {}

class CannotParseItem extends Failures {}

class NullValue extends Failures {}
