import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
 
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 170,
          color: Colors.amber,
          child: const Image(
            fit: BoxFit.fill,
            image: NetworkImage('https://th.bing.com/th?id=OIP.idB_-eo5pNgOG8Ker3jEpgHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2')),
        ),
        actions: [
          Container(
            height: 50,
            width: 170,
            color: Colors.blue,
            child: const Image(
              fit: BoxFit.cover,
              image: NetworkImage('https://th.bing.com/th/id/OIP.qg4uNS6bWx-ODtqxFUoMSwHaE8?w=263&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
          ),const SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 109, 90, 30)),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  
                  const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://th.bing.com/th/id/OIP.ooXz0V1a_GrUTD2M-o3pQAHaEK?w=316&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')
                  ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 228, 226, 222)),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        
                        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                      const Text('Searching.....')
                      ],
                    ),
                    
                  ),
                  ),
                ), 
                ],
                
              ),
            ),
            
            const Divider(thickness: 5,),
            Column(
              children: [
                Container(
          height: 100,
        color: const Color.fromARGB(255, 126, 161, 226),
        child: Container(
        
          width: 300,
          color: const Color.fromARGB(255, 52, 98, 249),
          child: Center(
            child: ListTile(
              leading: Image.network('https://th.bing.com/th/id/OIP.kWmdNrKSJeu_kmxu3sLDGwHaGw?w=202&h=185&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
              title: const Text('grocery',style:  TextStyle(fontSize: 25,color: Colors.white),),
              trailing: IconButton(onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  const GroceryPage()),
                // );
              }, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ),
        
        ),
        const SizedBox(height: 10,),
        Container(
          height: 100,
        color: const Color.fromARGB(255, 126, 161, 226),
        child: Container(
        
          width: 300,
          color: const Color.fromARGB(255, 52, 98, 249),
          child: Center(
            child: ListTile(
              leading: Image.network('https://th.bing.com/th/id/OIP.9_UbmWBJ6mqror1lyOzjEwHaDr?w=301&h=174&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
              title: const Text('Cosmatics',style: TextStyle(fontSize: 25,color: Colors.white),),
              trailing: IconButton(onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  const CosmaticsPage()),
                // );
              }, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ),
        
        ),
         const SizedBox(height: 10,),
        Container(
          height: 100,
        color: const Color.fromARGB(255, 126, 161, 226),
        child: Container(
        
          width: 300,
          color: const Color.fromARGB(255, 52, 98, 249),
          child: Center(
            child: ListTile(
              leading: Image.network('https://th.bing.com/th/id/OIP.LKIPn84FiPlNYh46c_C-YQHaFB?w=195&h=132&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
              title: const Text('Electronics',style: TextStyle(fontSize: 25,color: Colors.white),),
              trailing: IconButton(onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  const ElectronicPage()),
                // );
              }, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ),
        
        ),
         const SizedBox(height: 10,),
        Container(
          height: 100,
        color: const Color.fromARGB(255, 126, 161, 226),
        child: Container(
        
          width: 300,
          color:  const Color.fromARGB(255, 52, 98, 249),
          child: Center(
            child: ListTile(
              leading: Image.network('https://th.bing.com/th/id/OIP.kbUdPx6WteKEi2pgKwkg2gHaNJ?w=115&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
              title: const Text('Chocalate',style: TextStyle(fontSize: 25,color: Colors.white),),
              trailing: IconButton(onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  const ChocalatePage()),
                // );
              }, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ),
        
        ),
         const SizedBox(height: 10,),
        Container(
          height: 100,
        color: const Color.fromARGB(255, 126, 161, 226),
        child: Container(
        
          width: 300,
          color: const Color.fromARGB(255, 52, 98, 249),
          child: Center(
            child: ListTile(
              leading: Image.network('https://th.bing.com/th/id/OIP.nAoV4Zo7EgiKW3MBeiy1-AHaFS?w=241&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
              title: const Text('Stationary',style:  TextStyle(fontSize: 25,color: Colors.white),),
              trailing: IconButton(onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  const StationaryPage()),
                // );
              }, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ),
        
        ),
         
         

              ],
            )
          ],
        ),
      ),
    );
  }
}