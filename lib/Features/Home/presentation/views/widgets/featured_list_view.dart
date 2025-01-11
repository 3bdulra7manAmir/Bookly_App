import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBoxListView extends StatelessWidget
{
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state)
      {
        if (state is FeaturedBooksSuccess)
        {
          return GestureDetector
          (
            onTap: () {GoRouter.of(context).push(AppRouter.kBookDetailsView);},
            child: SizedBox
            (
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder
              (
                  scrollDirection: Axis.horizontal,
                  //itemCount: 7,
                  itemCount: state.books.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index)
                  {
                    return Padding
                    (
                        padding: EdgeInsets.only(left: 10, right: 0, top: 20, bottom: 20),
                        child: GestureDetector(
                          onTap: ()
                          {
                            GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                          },
                          child: CustomBookImage(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,))
                    );
                  }),
            ),
          );
        }
        else if (state is FeaturedBooksFailur)
        {
          return CustomErrorWidget(errorMessage: state.errorMessage,);
        }
        else
        {
          return CustomLoadingIndicator();
        }
      },
      listener: (context, state) {},
    );
  }
}
