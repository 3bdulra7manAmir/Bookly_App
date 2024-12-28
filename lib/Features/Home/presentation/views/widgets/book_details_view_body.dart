import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookDetialsViewBody extends StatelessWidget
{
  const BookDetialsViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
    children:
    [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: const CustomBookDetialsAppBar()),

      SizedBox(height: 3,),

      //BY Meeeeeeeeeeeeeeeee
        Padding(
          padding: EdgeInsetsDirectional.only(start: 15, end: 15),
          child: Container(width: double.infinity, height: 1, color: AssetColors().kSecondrayColor,)),
        //BY Meeeeeeeeeeeeeeeee
      
    
    
    ],
    );
  }
}


class name extends StatelessWidget
{
  const name({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container();
  }
}