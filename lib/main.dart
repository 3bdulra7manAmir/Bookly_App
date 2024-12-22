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
    return const GetMaterialApp(
      home: SplashView(),
      debugShowCheckedModeBanner: true,
      //themeMode: ThemeMode.dark,
    );
  }
}
