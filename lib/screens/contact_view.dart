import 'package:Cafe_Night_Trails/utils/app_theme_data.dart';
import 'package:Cafe_Night_Trails/utils/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: AppThemeData.appTheme.textTheme.displayLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cafe Northern Trails',
              style: AppThemeData.appTheme.textTheme.displayLarge!
                  .copyWith(fontSize: 33),
            ),
            UiUtils.gap(height: 15.00),
            Text(
              'We are located at: ',
              style: AppThemeData.appTheme.textTheme.displayMedium,
            ),
            UiUtils.gap(height: 5.00),
            Text(
              'Gairachautari-18, Lakeside',
              style: AppThemeData.appTheme.textTheme.displaySmall,
            ),
            // UiUtils.gap(height: 15.00),
            Text(
              'Pokhara',
              style: AppThemeData.appTheme.textTheme.displaySmall,
            ),
            UiUtils.gap(height: 15.00),
            Text(
              '+977-(980)-844-5971',
              style: AppThemeData.appTheme.textTheme.displaySmall,
            ),
          ],
        ),
      ),
    ));
  }
}
