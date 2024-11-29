import 'package:flutter/material.dart';

import 'widgets/app_settings_view_body.dart';

class AppSettingsView extends StatelessWidget {
  const AppSettingsView({super.key});
  static const String routeName = 'app_settings';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppSettingsViewBody(),
    );
  }
}
