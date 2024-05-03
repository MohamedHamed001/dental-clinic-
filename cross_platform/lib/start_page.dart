import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
        if (pageNo == 4) {
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
    return Container(
      height: 700,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 650,
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
                      'assets/start/page$index.jpg',
                      height: 500,
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
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Start',
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 191, 245),
                ),
              )),
        ],
      ),
    );
  }
}
