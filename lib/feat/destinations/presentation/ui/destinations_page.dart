import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/destinations/presentation/bloc/destination_bloc.dart';
import 'package:flutter_task/feat/destinations/presentation/ui/widget/add_destination.dart';
import 'package:flutter_task/singleton.dart';
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
                   if (Singleton().user?.role == 'editor') TextButton(onPressed: () => _showEditDialog( context: context, child:  AddDestination(controller: TextEditingController())), child:const Text('Add Destination')),
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
                              return ListView.separated(
                                separatorBuilder: (context, index) => const Divider(endIndent: 10, indent: 10,height: 5),
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  final doc = snapshot.data!.docs[index];
                                  return ListTile(
                                    trailing:Singleton().user?.role == 'editor'? IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () => _showEditDialog(
                                         context: context,
                                         docId:  doc.id,
                                          currentName:  doc['name'],
                                          child:  EditDestination(controller: TextEditingController(text: doc['name']), docId: doc.id)),
                                    ):null,
                                    title: Text(doc['name']),
                                    leading:Singleton().user?.role == 'editor'? IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () => BlocProvider.of<DestinationBloc>(context).add(DeleteDestinationEvent(destinationId: doc.id)),
                                    ):null,
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

  void _showEditDialog({
      required BuildContext context, String? docId, String? currentName,required Widget child}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return child;
      },
    );
  }
}
