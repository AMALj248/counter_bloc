import 'package:counter_bloc/blocs/counter_blocs/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state is CounterFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.exception),
            ));
            // add snackbar
          } else if (state is CounterProgress) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Yay! A SnackBar!'),
            ));
          }
        },
        builder: (context, state) {
          if(state is CounterSuccess){
          return Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.countVal}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),


              ],
            ),


          );
          }
          return Container(
            child: Text("Hey chetas"),
          );
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}