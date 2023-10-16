import 'package:flutter/material.dart';
import 'package:ftr/model/product.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.product,
    required this.press
  });

  final Product product;
  final VoidCallback press;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  bool isHover = false;
  Offset mousePos = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
          mousePos += e.delta;
          mousePos *= 0.12;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
          mousePos = const Offset(0, 0);
        });
      },
      child: GestureDetector(
          child: backImage(widget.product.images),
          onTap: widget.press,
      ),
    );
  }


  backImage(images) {
    return AnimatedContainer(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 1000),
      height: 350,
      width: 220,
      child: Container(
        decoration: isHover
            ? BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(images[1])))
            : BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(images[0]))),
      ),
    );
  }
}
