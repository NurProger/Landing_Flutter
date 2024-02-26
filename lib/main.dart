import 'package:flutter/material.dart';
import 'package:list/main_screen/main_sreen_widget.dart';
import 'package:list/widets/auth/auth_widget.dart';

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
        primarySwatch: Colors.blue
      ),
      routes: {
        "/":(context) => AuthWidget(),
        "/main_screen":(context) => MianScreenWidget(),

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
