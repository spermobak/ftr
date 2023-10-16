class Product {
  final String title, description;
  final int price, id;
  final List<String> images;

  Product(
      {required this.images,
      required this.title,
      required this.description,
      required this.price,
      required this.id});
}

List<Product> products = [
  Product(
    images: [
      'assets/images/cart_first_1.png',
      'assets/images/cart_first_2.png'],
      title: 'Укороченный жакет',
      description: 'Костюмная ткань 100% шерсть',
      price: 20000,
      id: 1),
  Product(
      images: [
        'assets/images/cart_second_1.png',
        'assets/images/cart_second_2.png'],
      title: 'Брюки с защипами',
      description: '100% шерсть',
      price: 16400,
      id: 2),
  Product(
      images: [
        'assets/images/cart_third_1.png',
        'assets/images/cart_second_1.png'],
      title: 'Бра из костюмной ткани с веревками',
      description: '100% шерсть',
      price: 2800,
      id: 3),
];
