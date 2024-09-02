part of 'destination_bloc.dart';

enum DestinationStatus {
  initial,
  loading,
  success,
  error,
}

final class DestinationState {
  const DestinationState._({
    this.status = DestinationStatus.initial,
    this.suggestions = const Stream.empty(),
  });

  const DestinationState.initial() : this._();

  const DestinationState.loading() : this._(status: DestinationStatus.loading);

  const DestinationState.success(
      Stream<QuerySnapshot<Map<String, dynamic>>> suggestions)
      : this._(status: DestinationStatus.success, suggestions: suggestions);

  const DestinationState.failure() : this._(status: DestinationStatus.error);

  final DestinationStatus status;
  final Stream<QuerySnapshot<Map<String, dynamic>>> suggestions;

  DestinationState copyWith({
    DestinationStatus? status,
    Stream<QuerySnapshot<Map<String, dynamic>>>? suggestions,
  }) {
    return DestinationState._(
      status: status ?? this.status,
      suggestions: suggestions ?? this.suggestions,
    );
  }
}
