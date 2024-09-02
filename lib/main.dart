import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_task/injection_container.dart'  as di;
import 'package:get_it/get_it.dart';
import 'core/router/app_router.dart';
import 'firebase_options.dart';
void main() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await di.configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => GetIt.instance.get<HomeBloc>())],
      child: MaterialApp.router(theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true,titleTextStyle: TextStyle(color: Colors.white),color: Color(0xff6200EE))),
        routerConfig: router,
      ),
    );
  }
}