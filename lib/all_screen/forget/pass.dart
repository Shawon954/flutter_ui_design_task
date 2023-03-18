import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/forget/success.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {

    TextEditingController _password = TextEditingController();
    TextEditingController _conformpassword = TextEditingController();

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
                Text('Enter a different password with the previous',style: TextStyle(
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SuccessfullPage()));
                      },
                      child: Text('Reset Password',style: TextStyle(color: Color(0xffFFFFFFF),fontSize: 14,fontWeight: FontWeight.bold),),
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
