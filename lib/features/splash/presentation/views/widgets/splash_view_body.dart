import 'package:delivery_food/core/constant/app_constant.dart';
import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/features/auth/presentation/views/sigin_in_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/service/register_shared_pref.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    translateAnimation();
    excuteSplash();
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 220 / 120,
            child: AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: animation.value,
                    child: SvgPicture.asset(
                      Assets.assetsImagesSplashImage,
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome!",
            style: AppTextStyles.semiBold16,
          )
        ],
      ),
    );
  }

  void excuteSplash() async {
    await Future.delayed(const Duration(seconds: 4), () async {
      bool? isSkioOnBoarding = await SharedPrefService.getBoolean(
        AppConstant.setBoolKey,
      );
      if (isSkioOnBoarding == true) {
        Navigator.pushReplacementNamed(
            mounted ? context : context, SiginInView.routeName);
      } else {
        Navigator.pushReplacementNamed(
            mounted ? context : context, SiginInView.routeName);
      }
    });
  }

  void translateAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 4),
        animationBehavior: AnimationBehavior.normal);
    animationController.forward();
    animation = Tween<Offset>(
      begin: const Offset(-120, 0),
      end: Offset.zero,
    ).animate(animationController);
    animation.addListener(() {
      animationController.forward();
    });
  }
}
