import 'package:flutter/material.dart';
import 'package:ftr/model/product.dart';

import '../../widgets/widgets.dart';

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
      appBar: AppBar(title: const Center(child: Text('F.T.R'))),
      body: GridView.builder(
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) => ItemCard(
          press: () {
            debugPrint('Card tapped.');
          },
          product: products[index],
        ),
      ),
    );
  }
}
