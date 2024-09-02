import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_task/feat/login/domain/entity/user.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  final UserAccount user;
  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance.get<HomeBloc>()..add(AddUserAccountEvent(userAccount: user)),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: Text('Hello, ${user.email}, your role is ${user.role}')),
          body: BlocProvider.of<HomeBloc>(context)
              .screens[BlocProvider.of<HomeBloc>(context).activeIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: BlocProvider.of<HomeBloc>(context).activeIndex,
            onTap: (index) => BlocProvider.of<HomeBloc>(context).add(ChangePageEvent(activePageIndex: index)),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Destinations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Users',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
