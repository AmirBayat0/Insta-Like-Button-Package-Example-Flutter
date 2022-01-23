// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: PageView(scrollDirection: Axis.vertical, children: [
          RoundedLikeButton(
            assetAddres: "assets/images/11.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/12.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/13.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/14.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/15.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/16.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/17.jpg",
          ),
          RoundedLikeButton(
            assetAddres: "assets/images/18.jpg",
          ),
        ]),
      ),
    );
  }
}

class RoundedLikeButton extends StatelessWidget {
  String assetAddres;
  RoundedLikeButton({required this.assetAddres});
  @override
  Widget build(BuildContext context) {
    return InstaLikeButton(
      curve: Curves.fastLinearToSlowEaseIn,
      iconColor: Colors.red,
      image: AssetImage(assetAddres),
      onChanged: () {},
      imageBoxfit: BoxFit.cover,
    );
  }
}
