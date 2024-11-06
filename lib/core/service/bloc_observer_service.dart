import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverService extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('onChange: ${change.toString()}');
    super.onChange(bloc, change);
  }
}
