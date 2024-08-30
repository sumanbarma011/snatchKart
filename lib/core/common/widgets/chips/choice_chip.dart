import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text);
    return ChoiceChip(
      label: isColor != null ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: isColor != null
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!)
          : null,
      shape: isColor != null ? const CircleBorder() : null,
      padding: isColor != null ? const EdgeInsets.all(0) : null,
      labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
      backgroundColor: THelperFunctions.getColor(text),
      side: BorderSide(color: isColor ?? TColors.white),
    );
  }
}
