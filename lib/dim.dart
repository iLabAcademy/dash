import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(size),
          _buildBlackLayer(size),
          Positioned(
            width: size.width,
            height: size.height,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.network(
                      "https://avatars.githubusercontent.com/u/80914328?v=4",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  _buildTitle(context),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Hello, I am a self-taught software developer. \nI am proficient in Python, Flutter Dart, Java, C ++.",
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    isRepeatingAnimation: false,
                    pause: const Duration(milliseconds: 100),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: _buildSocial(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      "Dimal Jay",
      style:
          Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),
    );
  }

  Positioned _buildBlackLayer(Size size) {
    return Positioned(
      child: Container(color: Colors.black45),
      width: size.width,
      height: size.height,
    );
  }

  Positioned _buildBackground(Size size) {
    return Positioned(
      width: size.width,
      height: size.height,
      child: Image.network(
        "https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZ3JhbW1pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
        fit: BoxFit.cover,
      ),
    );
  }

  Row _buildSocial() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.facebook),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.youtube),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.github),
        ),
      ],
    );
  }
}
