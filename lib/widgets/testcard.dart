import 'package:flutter/material.dart';

class TestCard extends StatefulWidget {
  const TestCard({
    super.key,
    required this.firstPhoto,
    required this.secondPhoto
  });

  final String firstPhoto;
  final String secondPhoto;

  @override
  State<TestCard> createState() => _TestCardState();
}

class _TestCardState extends State<TestCard> {
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
      child: InkWell(
          child: backImage(widget.firstPhoto, widget.secondPhoto),
          onTap: () {
            debugPrint('Card tapped.');
          }
      ),
    );
  }


  backImage(firsPhoto, secondPhoto) {
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
                image: AssetImage(secondPhoto)))
            : BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(firsPhoto))),
      ),
    );
  }
}
