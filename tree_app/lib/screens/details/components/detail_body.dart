import 'package:flutter/material.dart';
import 'package:tree_app/constants.dart';
import 'package:tree_app/screens/details/components/image_icon_card.dart';
import 'package:tree_app/screens/details/components/title_and_price.dart';

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        ImageIconCard(),
        TitleAndPrice(
          title: "Angelica",
          country: "VietNam",
          price: 440,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                child: Text(
                  "Buy now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {},
                color: kPrimaryColor,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Text("Decription"),
              ),
            )
          ],
        ),
        SizedBox(
          height: kDefaultPadding * 2,
        )
      ],
    );
  }
}
