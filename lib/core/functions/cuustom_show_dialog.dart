import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_styles.dart';

Future<dynamic> showCustomDialog(BuildContext context,
    {required String subtitle,
    required String title,
    required List<Widget> actions}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          style: TextStyles.font24BlueBold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                subtitle,
                style: TextStyles.font14LightGrayRegular,
              ),
            ],
          ),
        ),
        actions: actions,
      );
    },
  );
}
