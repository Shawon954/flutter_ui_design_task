import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  List ICONIMAGE = [


    'assets/homepage_icon/hoteltwo.png',
    'assets/homepage_icon/hotelone.png',
    'assets/homepage_icon/hotelone.png',


  ];
  List<String> Hotalname = [ 'Ambrosia Hotel & Restaurant ', 'Tava Restaurant','Haatkhola',];
  List<String> hotalLoction = [

    'Zakir Hossain Rd, \n'
        'Chittagong',
    '6 Surson Road, \n'
        'Chittagong',
    'Ambrosia Hotel &\n'
        'Chittagong',


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff32B768),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),)

        ),
        title: Text('Details Restaurant',
          style: TextStyle(
              fontSize: 12,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,),
            child: Container(
              height: 358,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15))


              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Tava Restaurant',style: TextStyle(fontSize: 20,color: Color(0xff1F2937),fontWeight: FontWeight.bold),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_pin,color: Color(0xff32B768),size: 20,),
                        Text(
                         'kazi Deiry, Taiger Pass,Chittagong',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff6B7280),
                              fontWeight: FontWeight.w400),
                        ),

                      ],
                    ),
                    SizedBox(height: 25,),
                    Center(child: Image.asset( 'assets/homepage_icon/bigroom.png',height: 182,width: 339,)),
                    SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 8),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.access_time_filled_rounded,color: Color(0xff32B768),size: 20,),
                                    SizedBox(width: 3,),
                                    Text(
                                      'Open today',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff6B7280),
                                          fontWeight: FontWeight.w500),
                                    ),

                                  ],
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '10:00 AM - 12:00 PM',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6B7280),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                              Image.asset( 'assets/homepage_icon/net.png',),
                                SizedBox(width: 4,),
                                Text(
                                  'Visit the Restaurant',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff2C8DFF),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Stack(
            children:[
              Padding(
              padding: const EdgeInsets.only(top: 8,),
              child: Container(
                height: 358,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(15))


                ),
                child:   Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            children: [
                              Text(
                                'List other restaurant',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff1F2937),
                                    fontWeight: FontWeight.bold),
                              ),

                              Text(
                                'check the menu at this restaurant',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff6B7280),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
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

                      Stack(
                        children:[

                          Container(
                          height: 300,

                          child:     Padding(
                            padding: const EdgeInsets.only(left: 5,right: 10),
                            child: Container(
                              height: 420,
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: Hotalname.length,
                                  itemBuilder: (_, index) {
                                    return Container(
                                      height: 90,
                                      width: 340,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 9,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

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

                                                      SizedBox(
                                                        height: 28,
                                                        width: 88,
                                                        child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                backgroundColor: Color(0xff32B768)
                                                            ),
                                                            onPressed: (){
                                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
                                                            },
                                                            child: Text('Check',style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF)),)),
                                                      )
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
                        ),

              ]
                      )
                  ],
                )

              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 295),
                child: Container(
                  height: 88,
                   width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Color(0xfff4f3f5),

                  ),
                    child: Stack(
                      children:[
                        Center(
                          child: SizedBox(
                          height: 33,
                          width: 232,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text('Booking',style: TextStyle(fontSize: 14,),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff32B768)
                            ),
                          ),
                      ),
                        ),
                        ]
                    ),
                ),
              )

                  ]
          )
        ],
      ),

    );
  }
}
