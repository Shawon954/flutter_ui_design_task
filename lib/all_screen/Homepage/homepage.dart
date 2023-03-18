import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/all_screen/Homepage/g_map.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  List ICONIMAGE = [

    'assets/homepage_icon/hotelone.png',
    'assets/homepage_icon/hoteltwo.png',
    'assets/homepage_icon/hotelone.png',
    'assets/homepage_icon/hotelone.png',


  ];
  List<String> IMAGELINK = [
    'assets/homepage_icon/kasschi.png',
    'assets/homepage_icon/vat.png',
    'assets/homepage_icon/katsu.png',
    'assets/homepage_icon/dump.png',


  ];
  List<String> TiTle = ['Chicken Biryani', 'Sauce Tonkatsu ', 'Chicken Katsu','Dumpling',];
  List<String> SUBTITLE = [
    'Ambrosia Hotel &\n'
    'Restaurant',
    'Ambrosia Hotel &\n'
    'Restaurant',
    'Ambrosia Hotel &\n'
    'Restaurant',
    'Ambrosia Hotel &\n'
    'Restaurant',


  ];
  List<String> Hotalname = ['Hotel Zaman Restaurant', 'Ambrosia Hotel & Restaurant ', 'Tava Restaurant','Haatkhola',];
  List<String> hotalLoction = [
    'kazi Deiry, Taiger Pass\n'
    'Chittagong',
    'Zakir Hossain Rd, \n'
    'Chittagong',
    '6 Surson Road, \n'
    'Chittagong',
    'Ambrosia Hotel &\n'
    'Chittagong',


  ];
  List<String> ORDER = [
    'Order  >',
    'Order  >',

  ];
  List CardColor=[

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     InkWell(
                       onTap: (){},
                         child: Image.asset('assets/homepage_icon/menu.png')),

                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GooglMap()));
                          },
                              icon: Icon(Icons.location_pin,color: Color(0xff32B768),)),
                          Text('Agrabad 435, Chittagong',style: TextStyle(
                              fontSize: 12,color: Color(0xff4B5563,),fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      CircleAvatar(
                       radius: 32,
                       backgroundImage: AssetImage('assets/homepage_icon/shawon.JPG'),
                     )
         ],
       ),
                   ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextFormField(

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffc8cad2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(),
                        ),
                        prefixIcon: Icon(Icons.search,color: Color(0xff9CA3AF),),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xff9CA3AF)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xffc8cad2)),
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xffc8cad2)),
                          borderRadius: new BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),



          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.1, 0.2, 0.3, 0.7],
                        colors: [
                          Color(0xffFFA10E),
                          Color(0xffFFB848),
                          Color(0xffFFC468),
                          Color(0xffFFE1B4),

                        ],
                      ),
                    ),

                    child:     Padding(
                      padding:
                      const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/homepage_icon/bur.png',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                   'Flash Offer',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                   'We are here with the best\n'
                                  'deserts intown.',
                                    style: TextStyle(
                                        fontSize: 7,
                                        color:  Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Order  >',
                                    style: TextStyle(
                                        fontSize: 8,
                                        color:  Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )

                              ],),
                          ),
                          Expanded(flex: 2,child: Image.asset('assets/homepage_icon/barger.png',height: 117,width: 207,)),


                        ],
                      ),
                    ),

                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 120,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.centerRight,
                        stops: [0.1, 0.2, 0.5, 0.7],
                        colors: [
                          Color(0xff53ce6a),
                          Color(0xff65ca79),
                          Color(0xaa0b8dad),
                           Color(0xff0b8dad),


                        ],
                      ),
                    ),

                    child:     Padding(
                      padding:
                      const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/homepage_icon/pizz.png',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                   'New Arivable',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                   'We are here with the best deserts intown.',
                                    style: TextStyle(
                                        fontSize: 7,
                                        color:  Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Order  >',
                                    style: TextStyle(
                                        fontSize: 8,
                                        color:  Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )

                              ],),
                          ),
                          Expanded(flex: 2,child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('assets/homepage_icon/Pizza.png',height: 117,width: 207,))),


                        ],
                      ),
                    ),

                  ),
                  SizedBox(width: 10,),
                ],
              ),

          ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Today New Arivable',
                              style: TextStyle(
                                  color: Color(0xff1F2937),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,),
                            ),

                            Text(
                              'Best of the today  food list update',
                              style: TextStyle(
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              'See All',
                              style: TextStyle(
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                 ),
                            ),
                            SizedBox(width: 8,),
                            Icon(Icons.arrow_forward_ios,color: Color(0xff89909E),size: 12,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 196,
                            width: 148,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 5,bottom: 5,right: 5 ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                      IMAGELINK[index],

                                    ),
                                  ),

                                  Text(
                                    TiTle[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_pin,color: Color(0xff32B768),size: 20,),
                                      SizedBox(width: 10,),
                                      Text(
                                        SUBTITLE[index],
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booking Restaurant',
                              style: TextStyle(
                                color: Color(0xff1F2937),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,),
                            ),

                            Text(
                              'Check your city Near by Restaurant',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              'See All',
                              style: TextStyle(
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                 ),
                            ),
                            SizedBox(width: 8,),
                            Icon(Icons.arrow_forward_ios,color: Color(0xff89909E),size: 12,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 10),
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return Container(
                              height: 90,
                              width: 340,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))),
                              margin: EdgeInsets.all(8),
                              child: Padding(
                                padding: const EdgeInsets.only( top: 5,right: 5,bottom: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Expanded(
                                       flex: 1,
                                       child: Image.asset(ICONIMAGE[index],height: 80,width: 80,)),

                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text(
                                              Hotalname[index],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.location_pin,color: Color(0xff32B768),size: 20,),
                                              Text(
                                                hotalLoction[index],
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w400),
                                              ),

                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xff32B768)
                                                ),
                                                  onPressed: (){},
                                                  child: Text('Book',style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF)),))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),

        ],
      ),
            ),
          ),
    ));
  }
}
