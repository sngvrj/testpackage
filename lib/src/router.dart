// lib/router.dart in your package
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../svt.dart';

final List<GoRoute> packageRoutes = [
  GoRoute(
    path: '/svt_screen',
    name: 'svt_screen',
    builder: (context, state) => const SVTScreen(),
    routes: <RouteBase>[
      GoRoute(
        path: 'svt_detail',
        name: 'svt_detail',
        builder: (context, state) => const SVTDetailScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'svt_detail1',
            name: 'svt_detail1',
            builder: (context, state) => const SVTDetailScreen1(),
          ),
        ],
      ),
    ],
  ),
];
