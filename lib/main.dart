import 'package:flutter/material.dart';
import 'package:flutter_game/providers/saveGameLists.dart';
import 'package:flutter_game/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SaveGameLists()),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter game',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: HomeScreen(),
    );
  }
}
