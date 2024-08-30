import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';

class SettingsMenuListTitle extends StatelessWidget {
  const SettingsMenuListTitle(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitlte,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String title;
  final String subTitlte;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitlte,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
