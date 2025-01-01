import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget
{
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {

    var width = MediaQuery.of(context).size.width;

    return Column(
    
    children:
    [
      
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: const CustomBookDetialsAppBar()
      ),

      //const SizedBox(height: 3,),

      //BY Meeeeeeeeeeeeeeeee
        Padding(
          padding: EdgeInsetsDirectional.only(start: 15, end: 15),
          child: Container(width: double.infinity, height: 1, color: AssetColors().kSecondrayColor,)
        ),
        //BY Meeeeeeeeeeeeeeeee
      const SizedBox(height: 10,),


      //63
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: CustomBookImage()
      ),

      const SizedBox(height: 35,),
      Text("The Jungle Book", style: Styles.titleStyle30,),
      const SizedBox(height: 3,),
      Text("Rudyard Kipling", style: Styles.titleStyle18),
      const SizedBox(height: 16,),
      BookRating(mainAxisAlignment: MainAxisAlignment.center,),

      const SizedBox(height: 35,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: BooksAction()
      ),

      const SizedBox(height: 50),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("You can Also Like:", style: Styles.titleStyle14.copyWith(
            fontWeight: FontWeight.w600,),)
          ),
        ),

      const SimilarBooksListView(),
      //const SizedBox(height: 40,),
    ],
    );
  }
}

