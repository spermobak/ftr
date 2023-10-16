import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/product.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Product? product;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is Product, 'You must provide product');
    product = args as Product;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter:
                const ColorFilter.mode(Colors.black38, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // flex: 1,
              child: Container(
                color: Colors.black,
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
