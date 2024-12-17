import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void customShowCountryPicker(BuildContext context,
    {required Function(Country) onSelect}) {
  return showCountryPicker(
      context: context,
      favorite: ["Eg", "Us", "Jo"],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 500.h,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        inputDecoration: const InputDecoration(
          labelText: 'Search',
          hintText: 'Search Your Country',
        ),
      ),
      onSelect: onSelect);
}
