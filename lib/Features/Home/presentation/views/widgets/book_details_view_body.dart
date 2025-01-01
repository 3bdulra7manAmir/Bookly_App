import 'package:bookly/Features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget
{
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {


    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomBookDetialsAppBar()
                ),

              //const SizedBox(height: 3,),
               BookDetailsSection(),
               Expanded(child: SizedBox(height: 50)),
               SimilarBooksSection(),
               SizedBox(height: 40,),
            ],
          ),
        )
      ],
    );
  }
}




