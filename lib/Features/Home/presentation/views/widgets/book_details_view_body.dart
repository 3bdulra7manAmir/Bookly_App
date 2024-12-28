import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookDetialsViewBody extends StatelessWidget
{
  const BookDetialsViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {

    var width = MediaQuery.of(context).size.width;

    return Column(
    children:
    [
      
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: const CustomBookDetialsAppBar()),

      //const SizedBox(height: 3,),

      //BY Meeeeeeeeeeeeeeeee
        Padding(
          padding: EdgeInsetsDirectional.only(start: 15, end: 15),
          child: Container(width: double.infinity, height: 1, color: AssetColors().kSecondrayColor,)),
        //BY Meeeeeeeeeeeeeeeee
      const SizedBox(height: 10,),

      SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: CustomBookImage()
      ),
    
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