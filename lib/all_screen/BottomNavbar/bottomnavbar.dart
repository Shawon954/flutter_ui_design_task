import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/Account/account_page.dart';
import 'package:flutter_ui_design_task/all_screen/Booking/booking_page.dart';
import 'package:flutter_ui_design_task/all_screen/Homepage/homepage.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {

  var _CurrentIndex = 0;
  final AllPages = [
    HomePage(),
    BookingPage(),
    AccountPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AllPages[_CurrentIndex],

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
            ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),),
          child: BottomNavigationBar(

            selectedItemColor: Color(0xff32B768),
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(fontFamily:'Inter-Regular.ttf',
                fontSize: 14,
                fontWeight: FontWeight.normal),

            currentIndex: _CurrentIndex,
            onTap: (index){
              setState(() {
                _CurrentIndex = index;
              });
            },

            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/navbaricon/homeicon.png'),size: 23,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/navbaricon/hisicon.png'),),
                label: 'Booking',

              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/navbaricon/personicon.png'),size: 25,),
                label: 'Account',
              ),



            ],

          ),
        ),
      ),
    );
  }
}
