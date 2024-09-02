import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../bloc/destination_bloc.dart';

class AddDestination extends StatelessWidget {
  final TextEditingController controller;
  const AddDestination({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text('Add Destination'),
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
              child: const Text('Add'),
              onPressed: () {
                final newName = controller.text;
                if (newName.isNotEmpty) {
                 GetIt.instance.get<DestinationBloc>().add(AddDestinationEvent(destinationName: newName));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
  }
}