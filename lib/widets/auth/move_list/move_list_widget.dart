import 'dart:html';

import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String ImageName;
  final String title;
  final String time;
  final String descripion;

  Movie({
      required this.id,
      required this.ImageName,
      required this.title,
      required this.time,
      required this.descripion});
}

class MoveListWidget extends StatefulWidget {
  MoveListWidget({super.key});

  @override
  State<MoveListWidget> createState() => _MoveListWidgetState();
}

class _MoveListWidgetState extends State<MoveListWidget> {
  final _movie = [
    Movie(
      id: 1,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 2,
        ImageName: "Assets/rr.jpg",
        title: "Битва бесконечности",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 3,
        ImageName: "Assets/rr.jpg",
        title: "1 + 1",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 4,
        ImageName: "Assets/rr.jpg",
        title: "1 + 2",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 5,
        ImageName: "Assets/rr.jpg",
        title: "Люди икс ",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 6,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 7,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 8,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 9,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 10,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 11,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
    Movie(
        id: 12,
        ImageName: "Assets/rr.jpg",
        title: "Смеральная битва",
        time: "April 7, 2023",
        descripion: 'Washed-ip MMA fighter Cole Young, unware of his heritage'),
  ];
  var _filterMovies = <Movie>[];
  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filterMovies = _movie.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filterMovies = _movie;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filterMovies = _movie;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTab(index) {
    final id = _movie[index].id;
    Navigator.of(context).pushNamed(
        "/main_screen/movie_details",
        arguments: id
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          itemCount: _filterMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filterMovies[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 2),
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ]),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () => _onMovieTab(index),
                  child: Row(
                    children: [
                      Image(image: AssetImage(movie.ImageName)),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              movie.time,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie.descripion,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: "Search",
              filled: true,
              fillColor: Colors.white.withAlpha(230),
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
