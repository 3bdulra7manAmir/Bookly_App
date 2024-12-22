import 'package:bookly/Features/Home/data/presentation/views/home_view.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';


class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin
{

  late AnimationController animationController;
  late Animation<Offset> textSildingAnim;
  @override
  void initState ()
  {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose()
  {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:
      [
        Image.asset(AssetImgs().kLogoImg),
        SizedBox(height: 4,),
        SlidingText(textSildingAnim: textSildingAnim),
      ],
    );
  }


  void initSlidingAnimation()
  {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    
    textSildingAnim = Tween<Offset>(begin: const Offset(0, 10) , end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(()=> HomeView(), transition: Transition.zoom, duration: kTransDur);
    });
  }

}
