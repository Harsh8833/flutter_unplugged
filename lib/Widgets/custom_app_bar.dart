import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final String title;
  final AppBar? appBar;
  final bool automaticallyImplyLeading, centerTitle;
  final List<Widget> widgets;
  final double appBarHeight;
  final Widget? leading;

  /// you can add more fields that meet your needs

  const BaseAppBar(
      {Key? key,
      required this.title,
      this.appBar,
      required this.widgets,
      this.automaticallyImplyLeading = false,
      this.backgroundColor = Colors.transparent,
      this.centerTitle = true,
      required this.appBarHeight,
      this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: leading,
        centerTitle: true,
        actions: widgets,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
