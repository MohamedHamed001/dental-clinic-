import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class AnimatedImages extends StatefulWidget {
  const AnimatedImages({Key? key}) : super(key: key);

  @override
  _AnimatedImagesState createState() => _AnimatedImagesState();
}

class _AnimatedImagesState extends State<AnimatedImages> {
  late final PageController pageController;
  int pageNo = 0;
  late Timer carouselTimer;

  bool IsEqualIndex(int index, int pageNo) {
    if (index == pageNo) {
      return true;
    } else {
      return false;
    }
  }

  Timer getTimer() => Timer.periodic(Duration(seconds: 3), (timer) {
        if (pageNo == 3) {
          pageNo = 0;
        }
        pageController.animateToPage(
          pageNo,
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        );
        pageNo++;
      });

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    carouselTimer = getTimer();
    print("Timer started");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 280,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                pageNo = index;
              });
            },
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: Image.asset(
                    'assets/image$index.jpg',
                    height: 280,
                  ));
            },
            itemCount: 4,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.circle,
                    size: 12,
                    color: IsEqualIndex(index, pageNo)
                        ? Colors.amber
                        : Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
