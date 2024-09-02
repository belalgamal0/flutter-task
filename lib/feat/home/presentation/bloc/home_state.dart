part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  success,
}

final class HomeState {
  const HomeState._({
    this.status = HomeStatus.initial,
  });

  const HomeState.initial() : this._();

  const HomeState.loading() : this._(status: HomeStatus.loading);

  const HomeState.success() : this._(status: HomeStatus.success);

  final HomeStatus status;

  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState._(status: status ?? this.status);
  }
}
