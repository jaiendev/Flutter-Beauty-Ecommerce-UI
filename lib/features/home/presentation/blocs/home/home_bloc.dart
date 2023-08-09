import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int currentIndex = 0;
  HomeBloc() : super(HomeInitial(index: 0)) {
    on<HomeEvent>((event, emit) {
      if (event is OnChangeIndexEvent) {
        _handleChangeIndex(event);
        emit(_getHomeDone);
      }
    });
  }

  // MARK PRIVATE
  HomeDone get _getHomeDone => HomeDone(index: currentIndex);

  _handleChangeIndex(OnChangeIndexEvent event) {
    currentIndex = event.index;
  }
}
