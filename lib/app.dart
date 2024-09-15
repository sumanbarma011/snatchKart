import 'package:esnatch/core/bindings/general_bindings.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: GeneralBindings(),
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: TColors.white,
          ),
        ),
      ),
    );
  }
}
