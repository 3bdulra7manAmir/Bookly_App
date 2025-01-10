import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBuilder extends StatelessWidget
{
  const BestSellerListViewBuilder({super.key});

  

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state){},
      builder: (context, state)
      {
        if (state is NewestBooksSuccess)
        {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length, //HERE
            itemBuilder: (context, index)
            {
              return BookListViewItem(
                bookModel: state.books[index],
              ); //HERE
            },
          );
        }
        else if (state is NewestBooksFailur)
        {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else
        {
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
