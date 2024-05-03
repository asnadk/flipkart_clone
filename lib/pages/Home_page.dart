// import 'package:flip_card_clone/account.dart';
// import 'package:flip_card_clone/pages/Cart.dart';
// import 'package:flip_card_clone/pages/Notification.dart';
// import 'package:flip_card_clone/pages/bottom.dart';
// import 'package:flip_card_clone/pages/Home_screen.dart';
// import 'package:flip_card_clone/pages/categories.dart';
// import 'package:flutter/material.dart';

// class Home_page extends StatelessWidget {
//   const Home_page({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<dynamic>pages=[
//     const home_screen(),
//     const Categories(),
//      const Notifications(),
//     Account(userName: "Asnad", emailId: 'asnad@123'),
//     const Cart(),
//     ];
//     return Scaffold(
//     body:SafeArea(
//     child: ValueListenableBuilder(
//       valueListenable: indexChangeNotifire,
//       builder: (context, int index, _) {
//         return pages[index];
//       },
//     ),
//   ),
//     bottomNavigationBar: const BottomNavigationBarWidget(),
//     );
//   }
// }



// // ignore: must_be_immutable
// class HomePage extends StatelessWidget {
//   String userName;
//   String email;
//    HomePage({super.key,required this.userName,required this.email});

//   @override
//   Widget build(BuildContext context) {
//     List<dynamic>pages=[
//        HomePages(userName: userName,),
//       const Favorite(),
//       const Cart(),
//         Account(userName:userName, emailId: email,)
//     ];
//    return Scaffold(
//   body: SafeArea(
//     child: ValueListenableBuilder(
//       valueListenable: IndexChangeNotifire,
//       builder: (context, int index, _) {
//         return pages[index];
//       },
//     ),
//   ),
//   bottomNavigationBar: const bottomNavigationWidget(),
// );

//   }
// }
import 'package:flip_card_clone/pages/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flip_card_clone/account.dart';
import 'package:flip_card_clone/pages/cart/Cart.dart';
import 'package:flip_card_clone/pages/Notification.dart';
import 'package:flip_card_clone/pages/bottom.dart';
import 'package:flip_card_clone/pages/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key }) : super();

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages =  [
       const Home(),
       CategoryPage(),
      const NotificationPage(),
      Account(userName: "Asnad", emailId: 'asnad@123'),
      const MyCartWidget(),
    ];

    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier, // Assuming indexChangeNotifier is defined somewhere
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
