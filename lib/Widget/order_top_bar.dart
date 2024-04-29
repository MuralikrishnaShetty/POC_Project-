import 'package:flutter/material.dart';

class OrderTopBar extends StatelessWidget implements PreferredSizeWidget { 
  const OrderTopBar({super.key}); 
   @override
  Widget build(BuildContext context) {
    return AppBar(
          centerTitle: true,
          title: const Text(
            "Order Detail",
            style: TextStyle(
              color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
            )
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
        backgroundColor: const Color(0xff0b2265),
        actions:  [
          IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/Edit.png',
                  width: 32,
                  height: 26,
                ),
              ),

        ]
        );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
