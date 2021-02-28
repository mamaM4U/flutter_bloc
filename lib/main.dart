import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/color_bloc.dart';
import 'package:flutter_erico_bloc_vb6/counter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ColorBloc>(builder: (context)=>ColorBloc()),
          BlocProvider<CounterBloc>(builder: (context)=>CounterBloc())
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainPage()
        ));
  }
}
