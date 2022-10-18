import 'package:flutter/material.dart';
import 'package:flutter_commerce/packages/Text/Text.dart';
import 'package:flutter_commerce/utils/colors.dart';

class App extends StatefulWidget {
  final Widget child;
  final bool? isMenu;

  const App({super.key, required this.child, this.isMenu = false});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.isMenu == false
          ? AppBar(
              leading: IconButton(
                  onPressed: () => {Navigator.of(context).pop(true)},
                  icon: const Icon(Icons.arrow_back)),
              backgroundColor: ThemeColors.primary,
              elevation: 3,
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            )
          : AppBar(
              backgroundColor: ThemeColors.primary,
              elevation: 3,
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const [
          UserAccountsDrawerHeader(
            accountName: TextWidget(
              text: "Arulraj V",
              color: ThemeColors.white,
            ),
            accountEmail: TextWidget(
              text: "abofficial1997@gmail.com",
              color: ThemeColors.white,
              size: 14,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: ThemeColors.grey_95,
              child: TextWidget(text: 'AV'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.mail_outline),
            title: TextWidget(text: 'Home'),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: widget.child,
      ),
    );
  }
}
