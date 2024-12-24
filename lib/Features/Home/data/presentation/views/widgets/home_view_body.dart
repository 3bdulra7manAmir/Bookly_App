import 'package:bookly/Features/Home/data/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/Home/data/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        FeaturedBoxListView(),
        //SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text('Best Seller', style: Styles.titleMeduim,))
      ],
    );
  }
}


