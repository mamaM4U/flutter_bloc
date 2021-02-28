import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/color_bloc.dart';
import 'package:flutter_erico_bloc_vb6/counter_bloc.dart';
import 'package:flutter_erico_bloc_vb6/draft_page.dart';
import 'package:flutter_erico_bloc_vb6/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc,Color>(builder: (context, currentColor)=> DraftPage(
      backgroundColor: currentColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc,int>(builder: (context,currentNumber)=>Text(
              currentNumber.toString(),
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              },
              child: Text(
                'Click to change',
                style: TextStyle(color: Colors.white),
              ),
              color: currentColor,
              shape: StadiumBorder(),
            )
          ],
        ),
      ),
    ),

    );
  }
}
