  import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


enum ColorEvent {to_pink,to_amber, to_purple}

  class ColorBloc extends Bloc<ColorEvent,Color>{

  @override
  Color get initialState => Colors.pink;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.to_pink  )? Colors.pink : (event == ColorEvent.to_amber  )? Colors.amber : Colors.purple;
  }
  
  }