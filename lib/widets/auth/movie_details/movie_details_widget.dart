import 'package:flutter/material.dart';
import 'package:list/widets/auth/movie_details/movie_details_main_info_widget.dart';

import '../../../Folder/Button_styles/app_bar_colors.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({super.key, required this.movieId});

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Tom Clancy`s Without Remorse", style: TextStyle(color: Colors.white),),
            backgroundColor: AppClors.mindarkBlue,
        ),
      body: ColoredBox(
        color: Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: [
                MovieDetailsMainInfoWidget()
          ],
        ),
      ),
    );
  }
}
