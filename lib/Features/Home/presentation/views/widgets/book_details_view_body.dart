import 'package:bookly/Features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomBookDetialsAppBar()),

              //const SizedBox(height: 3,),
              BookDetailsSection(
                book: bookModel,
              ),

              const Expanded(child: SizedBox(height: 50)),

              const SimilarBooksSection(),

              const SizedBox(height: 40,),
              
            ],
          ),
        )
      ],
    );
  }
}
