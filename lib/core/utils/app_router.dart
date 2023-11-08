import 'package:bookly_store/features/Home/presentation/views/details_book_view.dart';
import 'package:bookly_store/features/Home/presentation/views/home_view.dart';
import 'package:bookly_store/features/Search/presentation/view/search_view.dart';
import 'package:bookly_store/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/HomeView";
  static const kDetailsBookView = "/DetailsBookView";
  static const kSearchView = "/SearchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsBookView,
        builder: (context, state) => const DetailsBookView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
