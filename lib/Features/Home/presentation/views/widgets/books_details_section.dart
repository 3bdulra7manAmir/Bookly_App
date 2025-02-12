import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget
{
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context)
  {
    //var width = MediaQuery.of(context).size.width;
        return Column(
        children:
        [
          //BY Meeeeeeeeeeeeeeeee
          Padding(
              padding: EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Container(
                width: double.infinity,
                height: 1,
                color: AssetColors().kSecondrayColor,
              )
            ),
      
          //BY Meeeeeeeeeeeeeeeee
          const SizedBox(height: 10,),
      
          //63
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: CustomBookImage(imageUrl: book.volumeInfo!.imageLinks!.thumbnail ?? '',)
            ),
      
          const SizedBox(height: 35,),
      
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(book.volumeInfo!.title!, style: Styles.titleStyle30, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)),
      
          const SizedBox(height: 3,),
          
          Text(book.volumeInfo!.authors?[0] ?? '', style: Styles.titleStyle18),
      
          const SizedBox(height: 16,),
      
          BookRating(mainAxisAlignment: MainAxisAlignment.center,),
      
          const SizedBox(height: 35,),
      
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BooksAction(
                bookModel: book,
              )
            ),
        ],
      );
  }
}
