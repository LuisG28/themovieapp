import 'package:cinemapedia/config/constans/enviroment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Enviroment.movieDbKey),
      ),
    );
  }
}