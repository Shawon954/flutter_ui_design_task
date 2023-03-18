import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/Regpage/regipage.dart';

class SuccessfullPage extends StatefulWidget {
  const SuccessfullPage({Key? key}) : super(key: key);

  @override
  State<SuccessfullPage> createState() => _SuccessfullPageState();
}

class _SuccessfullPageState extends State<SuccessfullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Center(child: Image.asset('assets/forget_icon/Success Icon.png',height: 82,width: 82,),),
          ),

          Text('Success',style: TextStyle(fontSize: 24,color: Color(0xff374151,),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text('Congratulations your password has\n'
              '                 been changed,',style: TextStyle(fontSize: 14,color: Color(0xff828282,),fontWeight: FontWeight.bold),),





          SizedBox(height: 250,),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 50,
              width: 256,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff32B768)
                ),
                child: Text('Sing in',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16,fontWeight: FontWeight.bold),),
                onPressed:  (){


                  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistationPage()));

                },

              ),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
