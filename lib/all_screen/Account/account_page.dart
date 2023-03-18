import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

    final url = '+8801775389319';
  Future launchPhone(String url) async {
    if (await canLaunch("tel:$url")) {
      return launch("tel:$url");
    } else {
      print("Not valid $url");
    }
  }

    
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 90,
                  width: 327,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(11))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/homepage_icon/shawon.JPG'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Md.Abdur Rahman',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('shawoncse954@gmail.com',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5,),
                           InkWell(
                             onTap: (){
                               launchPhone(url);
                             },
                             child: Row(
                               children: [
                                 Icon(Icons.call,color: Colors.green,size: 20,),
                                 SizedBox(width: 3,),
                                 Text('+8801775389319')
                               ],
                             ),
                           )
                          ],
                        ),
                        Image.asset('assets/homepage_icon/notification.png',height: 40,width: 40,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 90,
              width: 327,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(11))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.account_circle_outlined,size: 30, color: Color(0xff6B7280)),

                    Text('Account setting',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 50,),
                    Icon(Icons.edit,size: 24,color: Color(0xff6B7280),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 196,
              width: 329,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(11))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 20),
                child: Align(

                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Image.asset('assets/homepage_icon/lan.png',),

                          Text('Language',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 50,),
                          Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff6B7280),),
                        ],
                      ),
                          SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/homepage_icon/feed.png',),

                          Text('Feedback',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 50,),
                          Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff6B7280),),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/homepage_icon/star.png',),

                          Text('Rate us',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 50,),
                          Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff6B7280),),
                        ],
                      ),

                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_circle_up,size: 22, color: Color(0xff6B7280)),

                          Text('New Version',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 40,),
                          Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff6B7280),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
             SizedBox(
               height: 60,
             ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 35,
                width: 111,
                decoration: BoxDecoration(
                  color: Color(0xffEB4646),
                  borderRadius: BorderRadius.all(Radius.circular(11))
                ),
                child: Center(child: Text('Logout',style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),)),
              ),
            )

          ],
        ),
      ),

    );

  }
}
