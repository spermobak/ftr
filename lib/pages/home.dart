import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('F.T.R')
      )),
      body:
      GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(25),
          childAspectRatio: 1,
          children: const [
            ItemCard(
                firstPhoto: 'assets/images/cart_first_1.png',
                secondPhoto: 'assets/images/cart_first_2.png'),
            ItemCard(
                firstPhoto: 'assets/images/cart_second_1.png',
                secondPhoto: 'assets/images/cart_second_2.png'),
            // ItemCart(),
            // ItemCart(),
          ]),
    );
  }
}
