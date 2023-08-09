part of 'home_bloc.dart';

abstract class HomeEvent {}

class OnChangeIndexEvent extends HomeEvent {
  final int index;
  OnChangeIndexEvent({required this.index});
}
