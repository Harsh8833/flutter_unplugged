import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:unplugged_flutter/MVVM/View/login_view.dart';

final GoRouter goRoute = GoRouter(

  routes: [
    GoRoute(
      name: "login",
      path: "/",
      builder: (context, state) => const LoginView(),
    ),
  ],
);



