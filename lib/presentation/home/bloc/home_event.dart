part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomePageLoaded extends HomeEvent {
  const HomePageLoaded();

  @override
  List<Object?> get props => [];
}

class HomeLogoutPushed extends HomeEvent {
  const HomeLogoutPushed();

  @override
  List<Object?> get props => [];
}

class HomeExternalLogout extends HomeEvent {
  const HomeExternalLogout();

  @override
  List<Object?> get props => [];
}