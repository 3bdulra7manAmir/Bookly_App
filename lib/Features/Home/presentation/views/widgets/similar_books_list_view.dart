import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget
{
  const SimilarBooksListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
        builder: (context, state)
        {
          if (state is SimilarBooksSuccessState)
          {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                //itemCount: 7,
                //itemCount: state.books.length,
                itemBuilder: (context, index)
                {
                  return const Padding(
                    padding: EdgeInsets.only(left: 10, right: 0, top: 20, bottom: 20),
                    child: CustomBookImage(imageUrl:'https://i5.walmartimages.com/seo/Call-of-Duty-Modern-Warfare-2-Key-Art-Wall-Poster-22-375-x-34_c1ed0da4-eea5-4837-b908-88c2d41f65c1.266057a89768427b41580b628842fb59.jpeg',
                      ));
                }),
          );
        }
        else if (state is SimilarBooksFailureState)
        {
          return Center(child: CustomErrorWidget(errorMessage: state.errorMessage));
        }
        else
        {
          return Center(child: CustomLoadingIndicator());
        }
      }),
    );
  }
}
