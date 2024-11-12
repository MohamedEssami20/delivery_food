import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'list_tile_home_title.dart';
import 'list_tile_home_trailing.dart';

class AppBarHomeView extends StatelessWidget {
  const AppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsImagesHomeImage,
          //height: 180,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 70,
          left: 30,
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 60,
                child: const ListTile(
                  title: ListTileHomeTitle(),
                  trailing: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        ListTileHomeTrailing(
                          icon: Icons.search_outlined,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        ListTileHomeTrailing(
                          icon: Icons.notifications_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
