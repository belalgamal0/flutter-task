import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/singleton.dart';
import 'package:get_it/get_it.dart';
import '../../../../chat/chat_page.dart';
import '../../bloc/users_bloc.dart';

class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            GetIt.instance.get<UsersBloc>()..add(const LoadUsersEvent()),
        child: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            if (state.status == UsersStatus.success) {
              return StreamBuilder<QuerySnapshot>(
                stream: state.users,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final users = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        title: Text(user['email'].toString()),
                        subtitle: Text('Role: ${user['role']},'),
                        trailing: IconButton(
                          icon: const Icon(Icons.chat, color: Colors.green),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(
                                    userId: Singleton().user!.id!,
                                    peerId: user['id']),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              );
            } else if (state.status == UsersStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Center(child: Text('Error'));
            }
          },
        ),
      ),
    );
  }
}
