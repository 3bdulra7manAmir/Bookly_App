import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),

              //BY Meeeeeeeeeeeeeeeee
              Padding(
                  padding: EdgeInsetsDirectional.only(start: 10, end: 10),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: AssetColors().kSecondrayColor,
                  )),
              //BY Meeeeeeeeeeeeeeeee

              FeaturedBoxListView(),

              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Best Seller',
                    style: Styles.titleStyle30.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  )),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListViewBuilder(),
        )
      ],
    );
  }
}
