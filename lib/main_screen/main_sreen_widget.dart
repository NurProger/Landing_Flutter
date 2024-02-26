import 'package:flutter/material.dart';

class MianScreenWidget extends StatefulWidget {
  const MianScreenWidget({super.key});

  @override
  State<MianScreenWidget> createState() => _MianScreenWidgetState();
}

class _MianScreenWidgetState extends State<MianScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TMDB", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
