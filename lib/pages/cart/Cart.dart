import 'package:flip_card_clone/pages/cart/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCartWidget extends StatefulWidget {
  const MyCartWidget({Key? key}) : super(key: key);

  @override
  State<MyCartWidget> createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  double calculateSubtotal() {
    double subtotal = 0;
    for (var item in cartItems) {
      subtotal += item.price * item.quantity;
    }
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor:  Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: cartItems.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Dismissible(
            key: Key(item.name),
            onDismissed: (direction) {
              setState(() {
                cartItems.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: const Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
            ),
            direction: DismissDirection.endToStart,
            child: ListTile(
              leading: Container(
                height: 80,
                width: 80,
                child: Image.network(item.images),
              ),
              title: Text(item.name),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(6),
                        icon: const Icon(Icons.remove, size: 20, color: Colors.green,),
                        onPressed: () {
                          setState(() {
                            if (item.quantity > 1) {
                              item.quantity--;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('${item.quantity}'),
                  const SizedBox(width: 8),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(6),
                      icon: const Icon(Icons.add, size: 20, color: Colors.green),
                      onPressed: () {
                        setState(() {
                          item.quantity++;
                        });
                      },
                    ),
                  ),
                ],
              ),
              trailing: Text('\₹${(item.price * item.quantity).toStringAsFixed(2)}'),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            _openPaymentBottomPopup(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Go To Check Out',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                '₹${calculateSubtotal().toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openPaymentBottomPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                   _SelectPaymentBottomPopup(context);

                    },
                    child: const Row(
                      children: [
                        Text(
                          'Select Method',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 12),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentConfirmWidget(),));
                    },
                    child: const Text(
                      'delivery',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                 Text('Address',  style: TextStyle(fontSize: 18),)
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Promo Code',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Pick Discount',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Cost:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '\₹${calculateSubtotal().toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void _SelectPaymentBottomPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Select Method',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     
                      Image.asset('assets/google-pay.png',height: 45,width: 45,)
                    ],
                  ),
                 
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: 
                      Image.asset('assets/paytm.png',height: 45,width: 45,)
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child:   Image.asset('assets/phone.png',height: 45,width: 45,)
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                child: Image.asset('assets/atm-card.png',height: 45,width: 45,) ,                  ),
                ],
              ),
              
            ],
          ),
        );
      },
    );
  }