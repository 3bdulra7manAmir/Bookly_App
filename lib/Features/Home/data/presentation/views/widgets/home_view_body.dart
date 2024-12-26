import 'package:bookly/Features/Home/data/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/Home/data/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/constants.dart';
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
        Padding(padding: EdgeInsets.only(left: 15), child: Text('Best Seller',
        style: Styles.titleStyle30.copyWith(
          //fontSize: 30,
          fontFamily: kGtSectraFine,
        ),)),
        BestSellerListViewItem(),
      ],
    );
  }
}


class BestSellerListViewItem extends StatelessWidget
{
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(15),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AssetImgs().kListImg2),),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}