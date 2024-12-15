import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'card_item.dart';

class ExtraCardViewBody extends StatelessWidget {
  const ExtraCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            CustomAppBar(
              title: "Extra Card",
              actions: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 243, 242, 242),
                radius: 22,
                child: IconButton(
                  onPressed: () {},
                  icon: const Center(
                    child: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CardItem(),
          ],
        ),
      ),
    );
  }
}
