import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main_shell.dart';


final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainShell();
      },
    ),
  ],
);
