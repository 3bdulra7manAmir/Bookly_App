import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget
{
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),

          SizedBox(height: 15,),

          Text('Search Results', style: Styles.titleStyle18,),

          SizedBox(height: 5,),
          
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget
{
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      //itemCount: 8,
      itemBuilder: (context, index)
      {
        return const BookListViewItem(
          bookModel: BookModel(), //HERE //ERROR
          padding: EdgeInsets.symmetric(vertical: 10),
        );
      },
    );
  }
}
