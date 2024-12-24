import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget
{
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AssetImgs().kListImg),),
            borderRadius: BorderRadius.circular(16)
          ),
        ),
      ),
    );
  }
}