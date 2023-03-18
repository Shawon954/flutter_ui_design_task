import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/all_screen/Homepage/homepage.dart';
import 'package:flutter_ui_design_task/all_screen/Regpage/regipage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: Text('Nearby restaurants',style: TextStyle(fontSize: 24,),),
            bodyWidget: Text('You dont have to go far to find a good restaurant, \n    '
                '  we have provided all the restaurants that is \n               '
                  '                    near you'),
            image: SvgPicture.asset('assets/onbordingimage/Tracking & Maps.svg'),
          ),

          PageViewModel(
            titleWidget: Text('Select the Favorites Menu',style: TextStyle(fontSize: 24,),),
            bodyWidget: Text('Now eat well, don\'t leave the house,You can\n'
                                  '        choose your favorite food only with\n'
                '                           one click'),
            image: SvgPicture.asset('assets/onbordingimage/Order illustration.svg'),
          ),PageViewModel(
            titleWidget: Text('Good food at a cheap price',style: TextStyle(fontSize: 24,),),
            bodyWidget: Text('You can eat at expensive restaurants with\n'
                '                       affordable price\n'),
            image: SvgPicture.asset('assets/onbordingimage/Safe Food.svg'),
          ),
        ],
        onDone: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistationPage()));
        },
showDoneButton: true,
        skip: Text('Skip',style: TextStyle(color: Color(0xff32B768),fontSize: 16),),
        showSkipButton: true,
        showNextButton: false,
        done: Icon(Icons.arrow_forward_rounded,color: Color(0xff32B768),),
        dotsDecorator: DotsDecorator(
          color: Color(0xffdedada),
          activeColor: Color(0xff32B768),
        ),
      ),
    );
  }
}
