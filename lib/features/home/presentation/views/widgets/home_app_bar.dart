import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/features/home/presentation/views/notification_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'list_tile_home_title.dart';
import 'list_tile_home_trailing.dart';

class AppBarHomeView extends StatelessWidget {
  const AppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Image.asset(
          Assets.assetsImagesHomeImage,
          width: double.infinity,
          height: 380,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 70,
          left: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 60,
                child: ListTile(
                  title: const ListTileHomeTitle(),
                  trailing: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        const ListTileHomeTrailing(
                          icon: Icons.search_outlined,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(NotificationView.routeName);
                          },
                          child: const ListTileHomeTrailing(
                            icon: Icons.notifications_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                        ),
                        Text(
                          'New York City',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBold16
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Provide the best food for you',
                    style: AppTextStyles.semiBold16
                        .copyWith(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
