import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RenoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RenoAppBar({super.key, required this.title, this.isleading = false});
  final String title;
  final bool isleading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isleading?Container(): GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_outlined)),
      title: Text(title),
      actions: [Icon(Icons.exit_to_app_outlined)],
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
