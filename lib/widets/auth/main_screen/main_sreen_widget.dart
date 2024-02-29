import 'package:flutter/material.dart';
import 'package:list/Folder/Button_styles/app_bar_colors.dart';
import 'package:list/widets/auth/move_list/move_list_widget.dart';

class MianScreenWidget extends StatefulWidget {
  const MianScreenWidget({super.key});

  @override
  State<MianScreenWidget> createState() => _MianScreenWidgetState();
}

class _MianScreenWidgetState extends State<MianScreenWidget> {
  int _currentIndex = 1;

  void onSelectedTab(int index){
  if(_currentIndex == index) return;
  setState(() {
    _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TMDB", style: TextStyle(color: Colors.white),),
        backgroundColor: AppClors.mindarkBlue,
      ),
      body: Center(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            const Text("News"),
            MoveListWidget(),
            const Text("Serials")
          ],
        ),
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
