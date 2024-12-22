import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_project/core/widgets/custom_text_form_field.dart';
import 'package:weather_project/features/home/data/models/auto_complete_response.dart';
import 'package:weather_project/features/home/logic/cubit/home_cubit.dart';

class WeatheSearch extends StatelessWidget {
  const WeatheSearch({
    super.key,
    required this.homeCubit,
  });

  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<AutocompleteResponse>(
      controller: homeCubit.searchController,
      suggestionsCallback: (pattern) async {
        if (pattern.isEmpty) return [];
        return await homeCubit.searchWeather(pattern, location: '');
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion.name),
        );
      },
      onSelected: (suggestion) async {
        await homeCubit.getWeather(location: suggestion.name, days: 3);
      },
      builder: (context, controller, focusNode) {
        return CustomTextFormField(
          controller: homeCubit.searchController, // Using the custom controller
          focusNode: focusNode,
          autoFocus: false,
          hintText: 'Search Location',
          prefix: const Icon(Iconsax.gps),
          validator: (validator) {},
        );
      },
    );
  }
}
