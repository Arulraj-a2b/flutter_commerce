import 'package:flutter/material.dart';
import 'package:flutter_commerce/modules/Product/ProductScreen.dart';
import 'package:flutter_commerce/packages/Text/Text.dart';
import 'package:flutter_commerce/utils/colors.dart';

class FeaturedProductList extends StatelessWidget {
  const FeaturedProductList({super.key});

  @override
  Widget build(BuildContext context) {
    var list = <Map>[
      {
        'imageUrl': "https://i.ibb.co/qRFzMfW/image-5-1.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireles'
      },
      {
        'imageUrl': "https://i.ibb.co/D4bpf00/image-5-3.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD '
      },
      {
        'imageUrl': "https://i.ibb.co/7NLgsW6/image-5.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireless'
      },
      {
        'imageUrl': "https://i.ibb.co/qRFzMfW/image-5-1.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireles'
      },
      {
        'imageUrl': "https://i.ibb.co/D4bpf00/image-5-3.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD '
      },
      {
        'imageUrl': "https://i.ibb.co/7NLgsW6/image-5.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireless'
      },
      {
        'imageUrl': "https://i.ibb.co/qRFzMfW/image-5-1.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireles'
      },
      {
        'imageUrl': "https://i.ibb.co/D4bpf00/image-5-3.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD '
      },
      {
        'imageUrl': "https://i.ibb.co/7NLgsW6/image-5.png",
        'price': '₹ 1500.00',
        'title': 'TMA-2 HD Wireless'
      },
    ];

    return Container(
        color: ThemeColors.grey_90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextWidget(text: 'Featured Product'),
                TextWidget(
                    text: 'See All',
                    color: ThemeColors.link,
                    size: 14,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductScreen()));
                    })
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                height: 187,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  separatorBuilder: (context, _) => const SizedBox(
                    width: 12,
                  ),
                  itemBuilder: (context, index) => bannerCard(
                    list[index]['imageUrl'],
                    list[index]['title'],
                    list[index]['price'],
                  ),
                )),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextWidget(text: 'Best Sellers'),
                TextWidget(
                    text: 'See All',
                    color: ThemeColors.link,
                    size: 14,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductScreen()));
                    })
              ],
            ),
            SizedBox(
                height: 187,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  separatorBuilder: (context, _) => const SizedBox(
                    width: 12,
                  ),
                  itemBuilder: (context, index) => bannerCard(
                    list[index]['imageUrl'],
                    list[index]['title'],
                    list[index]['price'],
                  ),
                )),
            const SizedBox(
              height: 16,
            ),
          ]),
        ));
  }

  Widget bannerCard(String url, String title, String price) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ThemeColors.white,
        ),
        width: 180,
        child: InkWell(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image(
                image: NetworkImage(url),
                height: 125,
                width: 125,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextWidget(
                    text: price,
                    color: ThemeColors.primary,
                  )),
            ],
          ),
        )),
      );
}
