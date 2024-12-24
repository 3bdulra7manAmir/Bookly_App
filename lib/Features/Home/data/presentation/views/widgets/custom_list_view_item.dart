import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget
{
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetImgs().kListImg),),
          borderRadius: BorderRadius.circular(16)
        ),
      ),
    );
  }
}