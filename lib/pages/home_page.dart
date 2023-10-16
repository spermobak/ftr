import 'package:flutter/material.dart';
import 'package:ftr/model/product.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
          title: Center(
              child: Text(
        'F.T.R',
        style: theme.textTheme.headlineMedium,
      ))),
      body: GridView.builder(
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) => ItemCard(
            product: products[index],
            press: () => Navigator.of(context)
                .pushNamed('/details', arguments: products[index])),
      ),
    );
  }
}
