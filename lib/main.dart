import 'package:flutter/material.dart';
import 'package:list/Folder/Button_styles/app_bar_colors.dart';
import 'package:list/widets/auth/main_screen/main_sreen_widget.dart';
import 'package:list/widets/auth/auth/auth_widget.dart';
import 'package:list/widets/auth/movie_details/movie_details_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:  'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor:  Color.fromRGBO(3, 37, 65, 1)),
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppClors.mindarkBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey
        ),
      ),
      routes: {
        "/":(context) => AuthWidget(),
        "/main_screen":(context) => MianScreenWidget(),
        "/main_screen/movie_details":(context) {
          final id = ModalRoute.of(context)?.settings.arguments;
          if(id is int){
            return MovieDetailsWidget(movieId: id);
          }else{
            return MovieDetailsWidget(movieId: 0);
          }
        },

      },
      initialRoute: "/",
      onGenerateRoute: (RouteSettings setting){
        return MaterialPageRoute(builder: (context) {
          return const Text("dd111");
        });
      },
    );
  }
}
