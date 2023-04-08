import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/detail_screen.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/user_screen.dart';
import 'package:routing/user_screen_query.dart';

void main() => runApp(const MyApp());

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    // bu sekilde detail sayfasi cocuk olarak ayarlanmistir
    // bu sayede cocuk ana sayfanin uzerinde acilir
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) {
    //     return const HomeScreen();
    //   },
    //   routes: [
    //     GoRoute(
    //       path: 'details',
    //       builder: (context, state) {
    //         return const DetailScreen();
    //       },
    //     ),
    //   ],
    // ),

    // bu sekilde sayfalar ust uste degil direkt acilir
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => const DetailScreen(),
    ),
    // veri gonderimi bu sekilde saglanabilir
    GoRoute(
      path: '/users/:userId',
      builder: (context, state) => UserScreen(id: state.params['userId']),
    ),
    // bu sekilde query seklinde de gonderilebilir
    GoRoute(
      path: '/users',
      builder: (context, state) => UserScreenQuer(filter: state.queryParams['filter']),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: router,
    );
  }
}
