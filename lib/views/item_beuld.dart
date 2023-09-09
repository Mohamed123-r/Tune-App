import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/view.dart';

class ItemBuild extends StatefulWidget {
  const ItemBuild({super.key, required this.model});

  final Model model;

  @override
  State<ItemBuild> createState() => _ItemBuildState();
}

class _ItemBuildState extends State<ItemBuild> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(

        color: widget.model.color,
        minWidth: double.infinity,
        onPressed: () async {

          widget.model.playSound();


        },
      ),
    );
  }
}
