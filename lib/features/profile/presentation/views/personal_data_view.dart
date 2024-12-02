import 'package:flutter/material.dart';

import 'widgets/personal_data_view_body.dart';

class PersonalDataView extends StatelessWidget {
  const PersonalDataView({super.key});
  static const String routeName = 'personal-data';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PersonalDataViewBody(),
    );
  }
}