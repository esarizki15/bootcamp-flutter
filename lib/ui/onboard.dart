import 'package:flutter/material.dart';

class OnBoardPage extends StatefulWidget {
  OnBoardPage({Key key}) : super(key: key);
  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget pageOne() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/onboard-0.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Cupcake ipsum dolor sit amet ",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Lollipop biscuit danish wafer dragée halvah chupa chups dragée pastry. Brownie danish pudding lollipop cupcake.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Image.asset(
                        'assets/eye.png',
                        height: 20,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Sentinel",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  children: <Widget>[
                    pageOne(),
                    pageOne(),
                    pageOne(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _pageController.previousPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease);
                      },
                      child: Container(
                        child: Image.asset(
                          'assets/arrow-left.png',
                          height: 48,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: (currentIndex == i)
                                    ? Colors.amber
                                    : Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease);
                      },
                      child: Container(
                        child: Image.asset(
                          'assets/arrow-right.png',
                          height: 48,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
