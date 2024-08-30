import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/device/device_utility.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            // width: THelperFunctions.screenWidth(),
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              valueColor: const AlwaysStoppedAnimation(TColors.primary),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
