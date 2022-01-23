// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:insta_like_button_example/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc);
    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

/*
------------------Instagram: @CodeWithFlexz
-------------------------Github: AmirBayat0
-----------Youtube: Programming with Flexz
*/
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: currentWidth,
          height: currentHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              image: AssetImage("assets/images/1.jpg"),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: _animation.value * 340),
                child: Opacity(
                  opacity: _controller.value,
                  child: Text(
                    "Science and Tech",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontFamily: 'Staatliches',
                        fontSize: 45,
                        color: Color(0xfffdfdfd),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 280,
              ),
              Padding(
                padding: EdgeInsets.only(left: _animation.value * 320),
                child: Opacity(
                  opacity: _controller.value,
                  child: MaterialButton(
                    minWidth: 60,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen(),
                        ),
                      );
                    },
                    color: Color(0xff242424),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
