import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/forget/enter_password.dart';
import 'package:flutter_ui_design_task/all_screen/forget/forget_pass.dart';

class BackEmail extends StatefulWidget {
  const BackEmail({Key? key}) : super(key: key);

  @override
  State<BackEmail> createState() => _BackEmailState();
}

class _BackEmailState extends State<BackEmail> {
  TextEditingController _editingController = TextEditingController();

  bool isButtonActive = true;

  @override
  void initState() {
    _editingController = TextEditingController();
    _editingController.addListener(() {
      final isButtonActive = _editingController.text.isNotEmpty;
    });
    super.initState();
  }

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
          Text('Please check your email for create\n'
    '                 a new password',style: TextStyle(fontSize: 16,color: Color(0xff6B7280,),fontWeight: FontWeight.bold),),


         SizedBox(height: 20,),
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Can\'t get email?',style: TextStyle(fontSize: 16,color: Color(0xff6B7280,),fontWeight: FontWeight.bold),),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                  },
                  child: RichText(text: TextSpan(text: 'Resubmit',style: TextStyle(color: Color(0xff32B768),fontSize: 16,fontWeight: FontWeight.bold)))),
            ],
          ),

          SizedBox(height: 200,),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 50,
              width: 256,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff32B768)
                ),
                child: Text('Back Email',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16,fontWeight: FontWeight.bold),),
                onPressed: isButtonActive? (){
                  setState(()=> isButtonActive= true);
                  _editingController.clear();

                  Navigator.push(context,MaterialPageRoute(builder: (context)=>EnterPassword()));

                }:null,

              ),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
