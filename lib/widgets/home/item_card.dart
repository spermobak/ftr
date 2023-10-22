import 'package:flutter/material.dart';
import 'package:ftr/model/product.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key, required this.product, required this.press});

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
        onTap: widget.press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: backImage(widget.product.images),
            ),
            SizedBox(
                height: 20,
                child: description(widget.product.title, widget.product.price))
          ],
        ),
      ),
    );
  }

  backImage(images) {
    return AnimatedContainer(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 1000),
      child: Container(
        decoration: isHover
            ? BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight, image: AssetImage(images[1])))
            : BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight, image: AssetImage(images[0]))),
      ),
    );
  }

  description(title, price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title.toUpperCase(),
                    style: const TextStyle(fontSize: 10, height: 1),
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text(
              "$price p.",
              style: const TextStyle(fontSize: 10, height: 1),
            ),
          )
        ],
      ),
    );
  }
}
