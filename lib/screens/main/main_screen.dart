import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eightythree/config/constants.dart';
import 'package:eightythree/screens/cart/cart_screen.dart';
import 'package:eightythree/screens/grocery/grocery_screen.dart';
import 'package:eightythree/screens/main/widgets/address_widget.dart';
import 'package:eightythree/screens/main/widgets/cart_floating_button.dart';
import 'package:eightythree/screens/main/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  List<IconData> icons = [
    FontAwesomeIcons.shop,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.wallet
  ];
  List<String> tabTitles = ["Grocery", "News", "Favourites", "Cart"];

  List<Widget> screens = [
    const GroceryScreen(),
    const Center(
      child: Text("News"),
    ),
    const Center(
      child: Text("Favourites"),
    ),
    const CartScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AddressWidget(
          address: "Mustafa St.",
        ),
        actions: const [ProfileWidget()],
      ),
      floatingActionButton: CartFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        activeIndex: activeIndex,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.white,
        elevation: 0,
        itemCount: icons.length,
        tabBuilder: (index, selected) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  color: selected ? Colors.red : Constants.textColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  tabTitles[index],
                  style: TextStyle(
                      fontSize: 10,
                      color: selected ? Colors.red : Constants.textColor),
                )
              ],
            ),
          );
        },
      ),
      body: screens[activeIndex],
    );
  }
}
