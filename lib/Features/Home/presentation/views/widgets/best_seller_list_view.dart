import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBuilder extends StatelessWidget
{
  const BestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 8,
      itemBuilder: (context, index)
      {
        return const BookListViewItem();
      },
      
    );
  }
}
