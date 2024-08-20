// lib/screens.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svt/src/renoappbarwidget.dart';

class SVTScreen extends StatelessWidget {
  const SVTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenoAppBar(title: 'SVT Screen',isleading: true,),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.goNamed('svt_detail');
          },
          child: Text('Move to SVT Detail Screen'),
        ),
      ),
    );
  }
}

class SVTDetailScreen extends StatelessWidget {
  const SVTDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenoAppBar(title: 'SVT Detail'),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.goNamed('svt_detail1');
          },
          child: Text('Move to SVT Detail 1 Screen'),
        ),
      ),
    );
  }
}

class SVTDetailScreen1 extends StatelessWidget {
  const SVTDetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RenoAppBar(title: 'SVT Detail 1'),
      body: Center(
        child: Text('SVT Detail 1'),
      ),
    );
  }
}
