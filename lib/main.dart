import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';

void main()
{
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget
{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      home: SplashView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AssetColors.kPrimaryColor),
      //themeMode: ThemeMode.dark,
    );
  }
}
