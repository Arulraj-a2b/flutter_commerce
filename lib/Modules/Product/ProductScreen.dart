import 'package:flutter/material.dart';
import 'package:flutter_commerce/packages/Text/Text.dart';
import 'package:flutter_commerce/utils/colors.dart';
import '../../common/AppBar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
    return App(
        child: SizedBox(
            height: height - 100,
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: list.length,
              itemBuilder: (context, index) => bannerCard(
                list[index]['imageUrl'],
                list[index]['title'],
                list[index]['price'],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
            )));
  }

  Widget bannerCard(String url, String title, String price) => Container(
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ThemeColors.white,
            boxShadow: const [
              BoxShadow(
                color: ThemeColors.grey_90,
                blurRadius: 2,
              ),
            ]),
        child: InkWell(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image(
                image: NetworkImage(url),
                height: 105,
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
