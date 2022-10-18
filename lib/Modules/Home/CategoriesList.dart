import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_commerce/packages/Text/Text.dart';
import 'package:flutter_commerce/utils/colors.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    var categoriesList = <Map>[
      {
        'icon': "assets/icons/gift.svg",
        'title': 'Gift',
      },
      {
        'icon': "assets/icons/food.svg",
        'title': 'Food',
      },
      {
        'icon': "assets/icons/fashion.svg",
        'title': 'Fashion',
      },
      {
        'icon': "assets/icons/gadget.svg",
        'title': 'Gadget',
      },
      {
        'icon': "assets/icons/gift.svg",
        'title': 'Gift',
      },
      {
        'icon': "assets/icons/food.svg",
        'title': 'Food',
      },
      {
        'icon': "assets/icons/fashion.svg",
        'title': 'Fashion',
      },
      {
        'icon': "assets/icons/gadget.svg",
        'title': 'Gadget',
      },
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            TextWidget(text: 'Categories'),
            TextWidget(
              text: 'See All',
              color: ThemeColors.link,
              size: 14,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => categorieCard(
                  categoriesList[index]['icon'],
                  categoriesList[index]['title'])),
              separatorBuilder: (context, _) => const SizedBox(
                    width: 12,
                  ),
              itemCount: categoriesList.length),
        )
      ],
    );
  }

  Widget categorieCard(String icon, String title) => InkWell(
        child: Column(children: [
          SvgPicture.asset(icon),
          const SizedBox(
            height: 8,
          ),
          TextWidget(
            text: title,
            size: 12,
          )
        ]),
      );
}
