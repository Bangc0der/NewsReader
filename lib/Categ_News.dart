import 'package:flutter/material.dart';

class Categ_News extends StatefulWidget{
  @override
  State<Categ_News> createState() => _Categ_NewsState();
}

class _Categ_NewsState extends State<Categ_News> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categ_News"),
      ),
      body: const Center(
        child: Column(
          children: [
            Text("Categ_News"),
            Text("Categ_News"),]))

    );
  }
}