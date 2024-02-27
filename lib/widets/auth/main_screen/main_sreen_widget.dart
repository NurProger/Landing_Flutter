import 'package:flutter/material.dart';
import 'package:list/Folder/Button_styles/app_bar_colors.dart';

class MianScreenWidget extends StatefulWidget {
  const MianScreenWidget({super.key});

  @override
  State<MianScreenWidget> createState() => _MianScreenWidgetState();
}

class _MianScreenWidgetState extends State<MianScreenWidget> {
  int _currentIndex = 0;

  void onSelectedTab(int index){
  if(_currentIndex == index) return;
  setState(() {
    _currentIndex = index;
    });
  }
  final List _listPages = [
    const Text("Films"),
    const Text("News"),
    const Text("Serials")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TMDB", style: TextStyle(color: Colors.white),),
        backgroundColor: AppClors.mindarkBlue,
      ),
      body: Center(
        child: _listPages[_currentIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "New"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter),
              label: "Films"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: "Serials"
          ),
        ],
        onTap:onSelectedTab,
      ),
    );
  }
}
