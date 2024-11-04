import 'package:delivery_food/core/service/register_shared_pref.dart';
import 'package:delivery_food/features/splash/presentation/views/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/helper/func/on_genrate_route.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // registerSharedPref(); 
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 await SharedPrefService().registerSharedPref();
  runApp(const DeliveryFood());
}

class DeliveryFood extends StatelessWidget {
  const DeliveryFood({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
