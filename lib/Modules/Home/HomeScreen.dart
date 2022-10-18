import 'package:flutter/material.dart';
import 'package:flutter_commerce/modules/Home/BannerList.dart';
import 'package:flutter_commerce/modules/Home/CategoriesList.dart';
import 'package:flutter_commerce/modules/Home/FeaturedProductList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: const [
                BannerList(),
                SizedBox(
                  height: 24,
                ),
                CategoriesList(),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Expanded(
            child: FeaturedProductList(),
          )
        ],
      ),
    );
  }
}
