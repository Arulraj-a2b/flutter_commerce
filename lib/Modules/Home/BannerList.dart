import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    var bannerList = <Map>[
      {
        'imageUrl': "https://i.ibb.co/3NPtMyC/Group-354.png",
      },
      {
        'imageUrl': "https://i.ibb.co/5YWH42y/Group-355.png",
      },
      {
        'imageUrl': "https://i.ibb.co/3NPtMyC/Group-354.png",
      },
      {
        'imageUrl': "https://i.ibb.co/5YWH42y/Group-355.png",
      },
    ];
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
        height: 116,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: bannerList.length,
          separatorBuilder: (context, _) => const SizedBox(
            width: 12,
          ),
          itemBuilder: (context, index) =>
              bannerCard(bannerList[index]['imageUrl'], width),
        ));
  }

  Widget bannerCard(String url, double width) => InkWell(
        child: Ink.image(
          image: NetworkImage(url),
          width: width - 150,
        ),
      );
}
