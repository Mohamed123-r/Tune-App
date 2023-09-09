import 'package:flutter/material.dart';
import 'package:tune/views/item_beuld.dart';

import '../models/view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Model> show = [
    Model(color: Color(0xff2D453F), sound: 'note1.wav'),
    Model(color: Color(0xff3C635C), sound: 'note2.wav'),
    Model(color: Color(0xff386E61), sound: 'note3.wav'),
    Model(color: Color(0xff3C786E), sound: 'note4.wav'),
    Model(color: Color(0xff529591), sound: 'note5.wav'),
    Model(color: Color(0xff72B3A4), sound: 'note6.wav'),
    Model(color: Color(0xff8AD0C7), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff442E1B),
        title: Text(
          'Tune',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: show
            .map(
              (e) => ItemBuild(model: e),
            )
            .toList(),
      ),
    );
  }
}
