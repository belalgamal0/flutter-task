import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../bloc/destination_bloc.dart';

class EditDestination extends StatelessWidget {
  final TextEditingController controller;
  final String docId;
  const EditDestination({super.key, required this.controller, required this.docId});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text('Edit Destination'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Destination Name'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                final newName = controller.text;
                if (newName.isNotEmpty) {
                 GetIt.instance.get<DestinationBloc>().add(UpdateDestinationEvent(destinationName: newName, destinationId: docId));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
  }
}