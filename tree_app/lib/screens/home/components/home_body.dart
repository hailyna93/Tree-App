import 'package:flutter/material.dart';
import 'package:tree_app/constants.dart';
import 'package:tree_app/screens/home/components/header_search.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderSearch(
            size: size,
          ),
          TitleMoreBtn(
            title: "Recommended",
            press: () {},
          )
        ],
      ),
    );
  }
}

class TitleMoreBtn extends StatelessWidget {
  const TitleMoreBtn({Key key, this.title, this.press}) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleCustomUnder(
            text: title,
          ),
          Spacer(),
          FlatButton(
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class TitleCustomUnder extends StatelessWidget {
  const TitleCustomUnder({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
