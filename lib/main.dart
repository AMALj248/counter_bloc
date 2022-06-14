import 'package:counter_bloc/presentation/homePage/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/counter_blocs/counter_bloc.dart';
import 'utils/bloc_observer.dart';
import 'package:bloc/bloc.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(MyApp()),
  blocObserver: MyBlocObserver());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>  CounterBloc(),
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


