import 'package:flutter/material.dart';
import 'package:flutter_webview_example/intro_Screens/intro_page_1.dart';
import 'package:flutter_webview_example/intro_Screens/intro_page_2.dart';
import 'package:flutter_webview_example/intro_Screens/intro_page_3.dart';
import 'package:flutter_webview_example/webview_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              intro_page_1(),
              intro_page_2(),
              intro_page_3(),

            ],
          ),
          Container(
            alignment: Alignment(0,0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    _controller.jumpToPage(2);
                  },
                  child: Text('Skip'),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),

                onLastPage
                    ?GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const WebviewPage();
                    },
                    ),
                    );
                  },
                  child: Text('Done'),
                ) :
                    GestureDetector(
                        onTap: (){
                          _controller.nextPage(duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next'),
                    ) ,
              ],
            ),
          ),
        ],
      )
    );
  }
}

