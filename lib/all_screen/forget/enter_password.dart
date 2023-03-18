import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/forget/pass.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({Key? key}) : super(key: key);

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {

  TextEditingController _password = TextEditingController();
  TextEditingController _conformpassword = TextEditingController();

  bool isButtonActive = true;
  @override
  void initState() {
    _conformpassword = TextEditingController();
    _conformpassword.addListener(() {
      final isButtonActive = _conformpassword.text.isNotEmpty;
    });
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  String _inputText = "";
  @override
  Widget build(BuildContext context) {
   return SafeArea(

      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 100,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Change New Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 6,),
                Text('Enter your registered email below',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('New Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),)),
                ),
                SizedBox(height: 5,),
                TextFormField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '**** **** ****',
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),

                      ),
                      borderSide: BorderSide(
                          width: 2, color: Color(0xff9CA3AF)),),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),

                      ),
                      borderSide: BorderSide(

                          width: 2, color: Color(0xff9CA3AF)), //<-- SEE HERE
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Confarm Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),)),
                ),
                SizedBox(height: 5,),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      _inputText = value;
                      _isButtonDisabled = _inputText.isEmpty;
                    });
                  },
                  controller: _conformpassword,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '**** **** ****',
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),

                      ),
                      borderSide: BorderSide(
                          width: 2, color: Color(0xff9CA3AF)),),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),

                      ),
                      borderSide: BorderSide(

                          width: 2, color: Color(0xff9CA3AF)), //<-- SEE HERE
                    ),
                  ),
                ),
                SizedBox(height: 270,),
                Align(
                  alignment: Alignment.center,
                  child:

                  SizedBox(
                    height: 50,
                    width: 256,
                    child: ElevatedButton(
                      onPressed: _isButtonDisabled ? null : () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordPage()));
                      },
                      child:   Text('Submit',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 18,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        primary: _isButtonDisabled ? Color(0xff32B768) :  Color(
                            0xff32B768),
                      ),
                    ),


                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
