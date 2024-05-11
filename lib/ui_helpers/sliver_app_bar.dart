import 'package:flutter/material.dart';

import '../utils/app_theme_data.dart';

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    // required this.homeContext
  });

  final String title, subtitle;

  // final BuildContext homeContext;

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isDrawer = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppThemeData.appTheme.appBarTheme.backgroundColor,
      expandedHeight: 180.0,
      title: Text(
        widget.title,
        style: AppThemeData.appTheme.textTheme.titleLarge!
            .copyWith(color: Colors.white, fontSize: 33),
      ),
      actions: [
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            isDrawer = !isDrawer;
            if (isDrawer) {
              controller.forward();
              // Scaffold.of(widget.homeContext).openEndDrawer();
            } else {
              controller.reverse();
            }
          },
          child: Center(
            child: AnimatedIcon(
                icon: AnimatedIcons.menu_close, progress: controller),
          ),
        )
      ],
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              Expanded(
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
