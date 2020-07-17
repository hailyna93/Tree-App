import 'package:flutter/material.dart';
import 'package:tree_app/constants.dart';
import 'package:tree_app/screens/home/components/feature_tree.dart';
import 'package:tree_app/screens/home/components/header_search.dart';
import 'package:tree_app/screens/home/components/recommend_tree.dart';
import 'package:tree_app/screens/home/components/title_with_moreBtn.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        HeaderSearch(
          size: size,
        ),
        TitleMoreBtn(
          title: "Recommended",
          press: () {},
        ),
        RecommendTree(),
        TitleMoreBtn(
          title: "Featured Plants",
          press: () {},
        ),
        FeatureTree(),
        SizedBox(
          height: kDefaultPadding,
        )
      ],
    );
  }
}
