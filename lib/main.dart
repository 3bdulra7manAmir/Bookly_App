import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/data/repos/home_repo_impl.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'basic.dart';
//import 'custom_plugin.dart';

void main()
{
  setupServiceLocator();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const BooklyApp()
    ),
  );
}

class BooklyApp extends StatelessWidget
{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider
        (
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider
        (
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,

        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AssetColors().kPrimaryColor,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
