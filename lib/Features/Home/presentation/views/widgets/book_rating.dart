import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget
{
  const BookRating({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        const Icon
        (
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3,),
        Text("4.8", style: Styles.titleStyle16,),
        const SizedBox(width: 5,),
        Text("(254)", style: Styles.titleStyle14.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}
