part of 'destination_bloc.dart';

@freezed
class DestinationEvents with _$DestinationEvents {
  const factory DestinationEvents.getDestination() = LoadDestinationsEvent;
    const factory DestinationEvents.addDestination({
    required String destinationName
  }) = AddDestinationEvent;
      const factory DestinationEvents.updateDestination({
    required String destinationName,
    required String destinationId
  }) = UpdateDestinationEvent;
        const factory DestinationEvents.deleteDestination({
    required String destinationId
  }) = DeleteDestinationEvent;
}
