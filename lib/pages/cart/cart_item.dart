class CartItem {
  final String name;
  final double price;
  int quantity;
  final int rating;
  final String images;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.rating,
    required this.images,
  });
}
 final List<CartItem> cartItems = [
    CartItem(
        
      name: 'nike shoe',
      price: 10.0,
      quantity: 1,
      rating: 3,
      images: 'https://th.bing.com/th/id/OIP.zFlLuxjrCXnWHOCroV4GpgHaEE?rs=1&pid=ImgDetMain',
    ),
    CartItem(
      name: 'Samsung whashing mechine',
      price: 15.0,
      quantity: 1,
      rating: 4,
      images: 'https://th.bing.com/th/id/OIP.lCUxdQnqI7LjcSnffnPMgQHaIh?rs=1&pid=ImgDetMain',
    ),
    CartItem(
      name: 'Soney Tv',
      price: 26.0,
      quantity: 2,
      rating: 3,
      images: 'https://th.bing.com/th/id/OIP.2I-6cU1wOi3WPYby0VWssAHaFj?rs=1&pid=ImgDetMain',
      
    ),
     CartItem(
      name: 'Apple airBud',
      price: 20.0,
      quantity: 3,
      rating: 5,
      images: 'https://th.bing.com/th/id/OIP.GcPA4U0v4YXmEHT3oA8UkQHaEK?rs=1&pid=ImgDetMain',
      
    ),
     CartItem(
      name: 'Avenue SunScrem',
      price: 12.0,
      quantity: 1,
      rating: 3,
      images: 'https://th.bing.com/th/id/OIP.dsm1tnka5Xub5u_l1hVFTQHaI8?rs=1&pid=ImgDetMain',
      
    ),
     CartItem(
      name: 'Tomato',
      price: 15.0,
      quantity: 4,
      rating: 5,
      images: 'https://th.bing.com/th/id/OIP.o4ir7Ui8vhkZLb6_K3pbrwHaHG?rs=1&pid=ImgDetMain',
      
    ),
     CartItem(
      name: 'Acer Laptop',
      price: 25.0,
      quantity: 2,
      rating: 2,
      images: 'https://th.bing.com/th/id/OIP.sN04m8AQ-bUkwQ9Ol3vCggHaFs?w=232&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      
    ),
     CartItem(
      name: 'Item 8',
      price: 10.0,
      quantity: 6,
      rating: 4,
      images: 'https://th.bing.com/th/id/OIP.o4ir7Ui8vhkZLb6_K3pbrwHaHG?rs=1&pid=ImgDetMain',
      
    ),
     CartItem(
      name: 'Item 9',
      price: 10.0,
      quantity: 6,
      rating: 4,
      images: 'https://th.bing.com/th/id/OIP.o4ir7Ui8vhkZLb6_K3pbrwHaHG?rs=1&pid=ImgDetMain?',
      
    ),
  
  ];