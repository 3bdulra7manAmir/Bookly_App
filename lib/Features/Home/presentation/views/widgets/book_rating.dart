import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget
{
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start,}); // required this.rating, required this.count

  final MainAxisAlignment mainAxisAlignment;
  //final int? rating;
  //final int? count;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:
      [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),

        const SizedBox(width: 6.3,),

        Text("4.8", style: Styles.titleStyle16,),

        const SizedBox(width: 5,),

        Opacity(
            opacity: 0.5,
            child: Text("(254)",
                style: Styles.titleStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ))),
      ],
    );
  }
}
