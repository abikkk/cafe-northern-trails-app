import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar(
      {super.key, required this.title, required this.subtitle});

  final String title, subtitle;

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    // ..forward()
    // ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180.0,
      title: Text(
        widget.title,
        style: AppThemeData.appTheme.textTheme.titleLarge!
            .copyWith(color: Colors.white, fontSize: 33),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: AnimatedIcon(
              icon: AnimatedIcons.menu_close, progress: controller),
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
              const Expanded(child: Placeholder()),
              // Text(
              //   subtitle,
              //   style: AppThemeData.appTheme.textTheme.titleLarge!
              //       .copyWith(color: Colors.white),
              // ),
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
