import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter
{

  static const kHomeView = '/homeView';

  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/', // Slash => '/' is  makes the path that it is assigned to it is your main or beginning of the application
      builder: (context, state) => const SplashView(),
    ),

    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
  ],
);

}