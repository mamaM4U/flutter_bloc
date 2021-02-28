import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/color_bloc.dart';
import 'package:flutter_erico_bloc_vb6/counter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
        builder: (contextm, currentColor) => DraftPage(
              backgroundColor: currentColor,
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<CounterBloc, int>(
                        builder: (context, currentNumber) => GestureDetector(
                          onTap: (){
                            counterBloc.dispatch(currentNumber+1);
                          },
                          child: Text(
                            currentNumber.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          onPressed: () {
                            colorBloc.dispatch(ColorEvent.to_pink);
                          },
                          color: Colors.pink,
                          shape: (currentColor == Colors.pink)
                              ? CircleBorder(
                                  side:
                                      BorderSide(color: Colors.black, width: 3))
                              : CircleBorder(),
                        ),
                        RaisedButton(
                          onPressed: () {
                            colorBloc.dispatch(ColorEvent.to_amber);
                          },
                          color: Colors.amber,
                          shape: (currentColor == Colors.amber)
                              ? CircleBorder(
                                  side:
                                      BorderSide(color: Colors.black, width: 3))
                              : CircleBorder(),
                        ),
                        RaisedButton(
                          onPressed: () {
                            colorBloc.dispatch(ColorEvent.to_purple);
                          },
                          color: Colors.purple,
                          shape: (currentColor == Colors.purple)
                              ? CircleBorder(
                                  side:
                                      BorderSide(color: Colors.black, width: 3))
                              : CircleBorder(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
