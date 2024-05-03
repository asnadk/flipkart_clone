import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final List<String> categories = [
    "Electronics",
    "Fashion",
    "Home & Furniture",
    "Appliances",
    "Books",
    "Sports & Fitness",
    "Toys",
    "Beauty, Health & Grocery",
    "Automotive",
    "Movies, Music & Video Games",
  ];
  List<String>images=[
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJIHO2sKgfFZj3c8ijdhupwLlof1WBNEBTHRwjF8ycxid7f2Ai0NI6G6oWqgKYz7a03rs&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPBhQJQNeesMxIgLB9uNLdZE_3mm9vrf1cw&usqp=CAU",
"https://5.imimg.com/data5/SELLER/Default/2023/10/351281158/PB/II/FF/68434442/bedroom-furniture-set.jpg",
"https://5.imimg.com/data5/GL/AB/GLADMIN-37892088/home-appliances.jpg",
"https://images.inc.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg",
"https://images.bhaskarassets.com/thumb/1200x900/web2images/521/2019/09/28/0521_sports-tools-640-417.jpg",
"https://cdn.firstcry.com/education/2022/11/06094158/Toy-Names-For-Kids.jpg",
"https://i.guim.co.uk/img/media/01f87bf222d7a5480efed804f97fc34d3b76e20c/0_200_6000_3600/master/6000.jpg?width=465&dpr=1&s=none",
'https://www.keyence.com/Images/ss_sealing_p_automotive-parts_001_1791826.png',
'https://hips.hearstapps.com/hmg-prod/images/time-travel-movies-1581634382.jpg?crop=0.502xw:1.00xh;0.251xw,0&resize=640:*',
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the category details page
              // Here you can define the action when a category is tapped
              // For simplicity, let's just print the selected category
              print("Selected Category: ${categories[index]}");
            },
            child: Container(
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(images[index]),fit: BoxFit.cover)
              ),
              child: Card(
                elevation: 5.0,
                child: Center(
                  child: Text(categories[index]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
