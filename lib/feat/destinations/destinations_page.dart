import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/destinations/presentation/bloc/destination_bloc.dart';
import 'package:get_it/get_it.dart';
import 'presentation/ui/widget/edit_destination.dart';

class DestinationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => GetIt.instance.get<DestinationBloc>()
          ..add(const LoadDestinationsEvent()),
        child: BlocBuilder<DestinationBloc, DestinationState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state.status == DestinationStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == DestinationStatus.success) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text("Hello, "),
                    Expanded(
                      child: StreamBuilder<QuerySnapshot>(
                        stream: state.suggestions,
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          }
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Text('Loading...');
                            default:
                              return ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  final doc = snapshot.data!.docs[index];
                                  return ListTile(
                                    leading: IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () => _showEditDialog(
                                          context,
                                          doc.id,
                                          doc['name'],
                                          EditDestination(controller: TextEditingController(text: doc['name']), docId: doc.id)),
                                    ),
                                    title: Text(doc['name']),
                                    subtitle: Text(doc.id),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () => BlocProvider.of<DestinationBloc>(context).add(DeleteDestinationEvent(destinationId: doc.id),
                                      ),
                                    ),
                                  );
                                },
                              );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Text('Error');
            }
          },
        ),
      ),
    );
  }

  void _showEditDialog(
      BuildContext context, String docId, String currentName, Widget w) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return w;
      },
    );
  }
}
