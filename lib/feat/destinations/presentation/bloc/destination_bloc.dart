import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/add_destination.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/delete_destination.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/get_destinations.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/update_destination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failure/failure.dart';
part 'destination_bloc.freezed.dart';

part 'destination_event.dart';

part 'destination_state.dart';
class DestinationBloc extends Bloc<DestinationEvents, DestinationState> {
  final GetAllDestinations getAllDestinations;
  final AddDestination addDestination;
  final UpdateDestination updateDestination;
  final DeleteDestination deleteDestination;

  DestinationBloc({
    required this.addDestination,
    required this.getAllDestinations,
    required this.updateDestination,
    required this.deleteDestination,
  }) : super(const DestinationState.initial()) {
    on<LoadDestinationsEvent>(_loadDestinations);
    on<AddDestinationEvent>(_addDestination);
    on<UpdateDestinationEvent>(_updateDestination);
    on<DeleteDestinationEvent>(_deleteDestination);
  }

  void _loadDestinations(LoadDestinationsEvent event, Emitter<DestinationState> emit) async {
    emit(const DestinationState.loading());

    final result = await getAllDestinations();
    _eitherLoadedOrErrorState(result, emit);
  }

  void _addDestination(AddDestinationEvent event, Emitter<DestinationState> emit) async {
    emit(state.copyWith(status: DestinationStatus.loading)); // Emit loading state

    final result = await addDestination(destinationName: event.destinationName);
    _eitherLoadedOrErrorStateAdding(result, emit);
  }
  void _updateDestination(UpdateDestinationEvent event, Emitter<DestinationState> emit) async {
    emit(state.copyWith(status: DestinationStatus.loading)); // Emit loading state

    final result = await updateDestination(destinationName: event.destinationName, destinationId: event.destinationId);
    _eitherLoadedOrErrorStateAdding(result, emit);
  }
    void _deleteDestination(DeleteDestinationEvent event, Emitter<DestinationState> emit) async {
    emit(state.copyWith(status: DestinationStatus.loading)); // Emit loading state

    final result = await deleteDestination(destinationId: event.destinationId);
    _eitherLoadedOrErrorStateAdding(result, emit);
  }
  void _eitherLoadedOrErrorState(
    Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>> failureOrStream,
    Emitter<DestinationState> emit,
  ) {
    failureOrStream.fold(
      (failure) {
        emit(const DestinationState.failure());
      },
      (stream) {
        emit(DestinationState.success(stream));
      },
    );
  }

  void _eitherLoadedOrErrorStateAdding(
    Either<Failure, void> failureOrResult,
    Emitter<DestinationState> emit,
  ) {
    failureOrResult.fold(
      (failure) {
        emit(state.copyWith(status: DestinationStatus.error));
      },
      (_) {
        emit(state.copyWith(status: DestinationStatus.success));
      },
    );
  }
}
