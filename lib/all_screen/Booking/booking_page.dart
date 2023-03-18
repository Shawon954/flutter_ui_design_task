import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/Booking/details.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

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
  automaticallyImplyLeading: false,
  backgroundColor: Color(0xff32B768),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
  bottomRight: Radius.circular(20),
  bottomLeft: Radius.circular(20),)

  ),
  title: Text('Booking History',
      style: TextStyle(
      fontSize: 16,
      color: Color(0xffFFFFFF),
    fontWeight: FontWeight.bold),),
  centerTitle: true,
),
      body: Column(
        children: [
          Padding(
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
          SizedBox(height: 10,),
          SizedBox(
            height: 43,
            width: 182,
            child: ElevatedButton(
                onPressed: (){},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Color(0xff6B7280),size: 20,),
                    SizedBox(width: 5,),
                    Text('Booking more ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.bold),),
                  ],
                ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFFFFFF)
            ),
            ),
          )
        ],
      ),
    );
  }
}
