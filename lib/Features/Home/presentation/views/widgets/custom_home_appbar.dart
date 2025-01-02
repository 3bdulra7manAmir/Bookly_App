import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 15),
      child: Row(
        children: [
          Image.asset(AssetImgs().kLogoImg, height: 18,),
          const Spacer(),
          IconButton(onPressed: ()
          {
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon: const Icon(Icons.search), iconSize: 24,),
        ],
      ),
    );
  }
}
