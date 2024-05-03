// import 'package:flutter/material.dart';

// class explore_page extends StatelessWidget {
//   const explore_page({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text("explore"),
//       actions: [
//         IconButton(onPressed: () {
          
//         }, icon: const Icon(Icons.search_outlined)),
//         IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
//         IconButton(onPressed: () { }, icon: const Icon(Icons.camera)),
//         IconButton(onPressed: () {}, icon: const Icon(Icons.shop_2))
//       ],
//     ),
//     body: Column(
//       children: [
//         Text("Product For you"),
//         Container(
//           width: double.infinity,
//           height: 600,
//           child: Column(
//             children: [
//               Image(image: NetworkImage())
//             ],
//           ),
//         )
//       ],
//     ),
     
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Account extends StatelessWidget {
  final String userName;
  final String emailId;

   Account({Key? key, required this.userName, required this.emailId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> containers = [
    HeadContainer(emailId: emailId, userName: userName),
   ListedContainer(iconData: Icons.shopping_bag_outlined, title: 'Order', index: 0, name: userName, email: emailId,),
   ListedContainer(iconData: Icons.remember_me_outlined, title: 'My Details', index: 1, name: userName, email: emailId),
   ListedContainer(iconData: Icons.pin_drop_outlined, title: 'Location', index: 2, name: userName, email: emailId),
   ListedContainer(iconData: Icons.payments_outlined, title: 'Payment methods', index: 3, name: userName, email: emailId),
   ListedContainer(iconData: Icons.favorite_border_outlined, title: 'My wishlisted', index: 4, name: userName, email: emailId),
   ListedContainer(iconData: Icons.notifications_outlined, title: 'Notifications', index: 5, name: userName, email: emailId),
   ListedContainer(iconData: Icons.help, title: 'Help', index: 6, name: userName, email: emailId),
   ListedContainer(iconData: Icons.info_outline, title: 'About', index: 7, name: userName, email: emailId),
];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                
                itemBuilder: (context, index) {
                  return containers[index];
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: containers.length,
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 20),
             child: GestureDetector(
              onTap: () {
                
              },
               child: Container(
                decoration: BoxDecoration(
                color:Colors.grey,
                borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Icon(Icons.logout,color: Colors.green,),
                      Center(
                        child: Text("Log Out",style:   TextStyle(
                            color: Colors.green,fontSize: 23,fontWeight: FontWeight.bold),),
                      ),
                  // Icon(Icons.logout,color: Colors.green,),
                    ],
                  ),
                ),
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}



class HeadContainer extends StatelessWidget {
  final String userName;
  final String emailId;

  const HeadContainer({super.key, required this.emailId, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading:  const CircleAvatar(
          radius: 30,
          child:Image(image: NetworkImage('https://png.pngtree.com/png-clipart/20200224/original/pngtree-cartoon-color-simple-male-avatar-png-image_5230557.jpg'))
        ),
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 0.5),
        ),
        subtitle: Text(emailId),
        trailing: IconButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context) => const Edit_page(),));
        }, icon: const Icon(Icons.mode_edit_outline,color: Colors.green,)),
      ),
    );
  }
}


// ignore: must_be_immutable
class ListedContainer extends StatelessWidget {
  final IconData iconData;
  final String title;
 final index;
final name;
final email;

   ListedContainer({super.key, required this.iconData,
    required this.title,required this.index, required this.name,required this.email });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      trailing: IconButton(
        onPressed: () {
        //  Navigator.push(context, MaterialPageRoute(builder: (context) {
        //    return pages[index];
        //  },));
        },
        icon: const Icon(Icons.arrow_forward_ios_outlined,size: 30,),
      ),
    );
  }
   
}
