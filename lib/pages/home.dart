import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(image: 'assets/images/1.jpg'),
          makePage(image: 'assets/images/2.jpg'),
          makePage(image: 'assets/images/3.jpg'),
          makePage(image: 'assets/images/4.jpg'),
          makePage(image: 'assets/images/5.jpg'),
          makePage(image: 'assets/images/6.jpg'),
          makePage(image: 'assets/images/7.jpg'),
          makePage(image: 'assets/images/8.jpg'),
          makePage(image: 'assets/images/9.jpg'),
          makePage(image: 'assets/images/10.jpg'),
          makePage(image: 'assets/images/11.jpg'),
          makePage(image: 'assets/images/12.jpg'),
          makePage(image: 'assets/images/13.jpg'),
        ],
      ),
    );
  }
}

Widget makePage({image}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
        .3,
        .9
      ], colors: [
        Colors.black.withOpacity(.9),
        Colors.black.withOpacity(.2)
      ])),
    ),
  );
}
