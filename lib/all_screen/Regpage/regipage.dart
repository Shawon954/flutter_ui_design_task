import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/all_screen/BottomNavbar/bottomnavbar.dart';
import 'package:flutter_ui_design_task/all_screen/Homepage/homepage.dart';
import 'package:flutter_ui_design_task/all_screen/forget/forget_pass.dart';
import 'package:get_storage/get_storage.dart';

class RegistationPage extends StatefulWidget {
  const RegistationPage({Key? key}) : super(key: key);

  @override
  State<RegistationPage> createState() => _RegistationPageState();
}

class _RegistationPageState extends State<RegistationPage> {

 final _formkey = GlobalKey<FormState>();



  TextEditingController regname = TextEditingController();
  TextEditingController regemail = TextEditingController();
  TextEditingController regpass = TextEditingController();
  TextEditingController logemail = TextEditingController();
  TextEditingController logpass = TextEditingController();

 bool _isButtonDisabled = true;
 String _inputText = "";

 final box = GetStorage();
 @override
 void initState() {
   super.initState();
   _loadData();
 }

 void _loadData() async {
   await box.initStorage;
   setState(() {
     _inputText = box.read("myKey") ;

   });
 }

 void _saveData() async {
   await box.write("myKey", _inputText);

 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/regpage/Order Success.svg'),
          SizedBox(height: 20,),
          Text('Welcome',style: TextStyle(fontSize: 24),),
          SizedBox(height: 20,),
          Text('Before enjoying Foodmedia services \n'
            '                Please register first',style: TextStyle(fontSize: 14),),


          SizedBox(height: 100,),

          SizedBox(
            height: 50,
            width: 256,
            child: ElevatedButton(

                child: Text('Create Account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              onPressed: (){


              bool isButtonActive = true;


                showModalBottomSheet(
                  backgroundColor: Color(0xffE5E5E5),
                  isScrollControlled: true,
                  context: context,


                  builder: (BuildContext context) {
                    return DefaultTabController(
                      length: 2,
                      child: Container(
                        height: 650,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 5,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xffD2D4D8),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  )
                                ),
                              ),
                            ),
                            TabBar(
                              labelColor: Color(0xff32B768),
                              labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                              unselectedLabelColor: Color(0xff89909E),
                              indicatorColor:Color(0xff32B768) ,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Tab(text: 'Create Account',),
                                Tab(text: 'Login'),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // Content for Tab 1
                                  Column(
                                      children: [

                                            Padding(
                                              padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
                                              child: Form(
                                                key: _formkey,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                            child: Text('Full Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      TextFormField(

                                                               controller: regname,
                                                        keyboardType: TextInputType.text,
                                                        decoration: InputDecoration(
                                                          hintText: 'Enter your full name',
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
                                                      SizedBox(height: 20,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                            child: Text('Email Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                      ),
                                                      SizedBox(height: 5,),


                                                      TextFormField(

                                                        controller: regemail,
                                                        keyboardType: TextInputType.emailAddress,
                                                        decoration: InputDecoration(
                                                          hintText: 'Eg.namaemail@emailkamu.com',
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
                                                      SizedBox(height: 20,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Align(
                                                            alignment: Alignment.topLeft,
                                                            child: Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      TextFormField(
                                                        onChanged: (value) {
                                                          setState(() {
                                                            _inputText = value;
                                                            _isButtonDisabled = _inputText.isEmpty;
                                                          });
                                                        },

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
                                                        obscureText: true,
                                                      ),
                                                    ],
                                                  ),
                                              ),
                                            ),
                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(
                                            onPressed: _isButtonDisabled ? null : () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationbar()));
                                            },
                                            child:   Text('Registation',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 18,fontWeight: FontWeight.bold),),
                                            style: ElevatedButton.styleFrom(
                                              primary: _isButtonDisabled ? Color(0xff32B768) :  Color(
                                                  0xff32B768),
                                            ),
                                          ),




                                        ),
                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(

                                              child: Center(
                                                child: Row(

                                                  children: [
                                                    SizedBox(width: 10,),
                                                    Image.asset('assets/regpage/ic_google.png'),
                                                    SizedBox(width: 20,),
                                                    Text('Sign up with Google',style: TextStyle(color: Color(0xff222222),fontSize: 18,fontWeight: FontWeight.bold),),
                                                  ],
                                                ),
                                              ),
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xffF4F4F4))
                                          ),
                                        ),
                                      ],
                                    ),

                                  // Content for Tab 2
                                  Container(

                                    child:
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
                                          child: Form(
                                            key: _formkey,
                                            child: Column(
                                              children: [

                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text('Email Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                ),
                                                SizedBox(height: 5,),
                                                TextFormField(
                                                  onChanged: (value) {
                                                    setState(() {

                                                      _inputText = value;

                                                    });
                                                  },
                                                  controller: logemail,
                                                  keyboardType: TextInputType.emailAddress,
                                                  decoration: InputDecoration(
                                                    hintText: 'Eg.namaemail@emailkamu.com',
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
                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                ),
                                                SizedBox(height: 5,),
                                                TextFormField(
                                                      controller: logpass,
                                                  onChanged: (value) {
                                                    setState(() {

                                                      _inputText = value;
                                                      _isButtonDisabled = _inputText.isEmpty;
                                                    });
                                                  },
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
                                                  obscureText: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: TextButton(onPressed: (){
                                                _loadData();
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                                              },child: Text('Forget Password?',style: TextStyle(color: Color(0xff32B768)),))),
                                        ),
                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(
                                            onPressed: _isButtonDisabled ? null : () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationbar()));
                                            },
                                            child:   Text('Login',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 18,fontWeight: FontWeight.bold),),
                                            style: ElevatedButton.styleFrom(
                                              primary: _isButtonDisabled ? Color(0xff32B768) :  Color(
                                                  0xff32B768),
                                            ),
                                          ),




                                        ),

                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(

                                              child: Center(
                                                child: Row(

                                                  children: [
                                                    SizedBox(width: 10,),
                                                    Image.asset('assets/regpage/ic_google.png'),
                                                    SizedBox(width: 20,),
                                                    Text('Login with Google',style: TextStyle(color: Color(0xff222222),fontSize: 18,fontWeight: FontWeight.bold),),
                                                  ],
                                                ),
                                              ),
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xffF4F4F4))
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );

               },


               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xff32B768))
               ),),

          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: 256,
            child: ElevatedButton(

                child: Text('Login',style: TextStyle(color: Color(0xff10B981),fontSize: 18,fontWeight: FontWeight.bold),),
              onPressed: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,

                  builder: (BuildContext context) {
                    return DefaultTabController(
                      length: 2,
                      initialIndex: 1,
                      child: Container(
                        height: 650,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 5,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Color(0xffD2D4D8),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    )
                                ),
                              ),
                            ),
                            TabBar(
                              labelColor: Color(0xff32B768),
                              labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                              unselectedLabelColor: Color(0xff89909E),
                              indicatorColor:Color(0xff32B768) ,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Tab(text: 'Create Account',),
                                Tab(text: 'Login'),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // Content for Tab 1
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
                                        child: Form(
                                          key: _formkey,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text('Full Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                              ),
                                              SizedBox(height: 5,),
                                              TextFormField(
                                                controller: regname,
                                                keyboardType: TextInputType.text,
                                                decoration: InputDecoration(
                                                  hintText: 'Enter your full name',
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
                                              SizedBox(height: 20,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text('Email Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                              ),
                                              SizedBox(height: 5,),
                                              TextFormField(
controller: regemail,
                                                keyboardType: TextInputType.emailAddress,
                                                decoration: InputDecoration(
                                                  hintText: 'Eg.namaemail@emailkamu.com',
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
                                              SizedBox(height: 20,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                              ),
                                              SizedBox(height: 5,),
                                              TextFormField(
controller: regpass,onChanged: (value) {
                                                setState(() {
                                                  _inputText = value;
                                                  _isButtonDisabled = _inputText.isEmpty;
                                                });
                                              },
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
                                                obscureText: true,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      SizedBox(
                                        height: 50,
                                        width: 256,
                                        child: ElevatedButton(
                                          onPressed: _isButtonDisabled ? null : () {
                                            _loadData();
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationbar()));
                                          },
                                          child:   Text('Login',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 18,fontWeight: FontWeight.bold),),
                                          style: ElevatedButton.styleFrom(
                                            primary: _isButtonDisabled ? Color(0xff32B768) :  Color(
                                                0xff32B768),
                                          ),
                                        ),




                                      ),
                                      SizedBox(height: 30,),
                                      SizedBox(
                                        height: 50,
                                        width: 256,
                                        child: ElevatedButton(

                                            child: Center(
                                              child: Row(

                                                children: [
                                                  SizedBox(width: 10,),
                                                  Image.asset('assets/regpage/ic_google.png'),
                                                  SizedBox(width: 20,),
                                                  Text('Sign up with Google',style: TextStyle(color: Color(0xff222222),fontSize: 18,fontWeight: FontWeight.bold),),
                                                ],
                                              ),
                                            ),
                                            onPressed: (){},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xffF4F4F4))
                                        ),
                                      ),
                                    ],
                                  ),

                                  // Content for Tab 2
                                  Container(

                                    child:
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
                                          child: Form(
                                            key: _formkey,
                                            child: Column(
                                              children: [

                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text('Email Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                ),
                                                SizedBox(height: 5,),
                                                TextFormField(

                                                  keyboardType: TextInputType.emailAddress,
                                                  decoration: InputDecoration(
                                                    hintText: 'Eg.namaemail@emailkamu.com',
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
                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                                                ),
                                                SizedBox(height: 5,),
                                                TextFormField(
                                                  onChanged: (value) {
                                                    setState(() {

                                                      _inputText = value;
                                                      _isButtonDisabled = _inputText.isEmpty;
                                                    });
                                                  },

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
                                                  obscureText: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: TextButton(onPressed: (){
                                                _loadData();
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                                              },child: Text('Forget Password?',style: TextStyle(color: Color(0xff32B768)),))),
                                        ),
                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(
                                            onPressed: _isButtonDisabled ? null : () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationbar()));
                                              },
                                            child:   Text('Login',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 18,fontWeight: FontWeight.bold),),
                                            style: ElevatedButton.styleFrom(
                                              primary: _isButtonDisabled ? Color(0xff32B768) :  Color(
                                                  0xff32B768),
                                            ),
                                          ),




                                        ),

                                        SizedBox(height: 30,),
                                        SizedBox(
                                          height: 50,
                                          width: 256,
                                          child: ElevatedButton(

                                              child: Center(
                                                child: Row(

                                                  children: [
                                                    SizedBox(width: 10,),
                                                    Image.asset('assets/regpage/ic_google.png'),
                                                    SizedBox(width: 20,),
                                                    Text('Login with Google',style: TextStyle(color: Color(0xff222222),fontSize: 18,fontWeight: FontWeight.bold),),
                                                  ],
                                                ),
                                              ),
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xffF4F4F4))
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );

              },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xffD1FAE5))
               ),
            ),

          SizedBox(height: 30,),
          Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By logging in Or Registering, You Have Agreed To',style: TextStyle(fontSize: 12),),
                  SizedBox(width: 2,),
                  Text('The Terms And',style: TextStyle(fontSize: 12,color: Color(0xff10B981)),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Conditions',style: TextStyle(fontSize: 12,color: Color(0xff10B981)),),
                  SizedBox(width: 2,),
                  Text('And',style: TextStyle(fontSize: 12),),
                  SizedBox(width: 2,),
                  Text('Privacy Policy.',style: TextStyle(fontSize: 12,color: Color(0xff10B981)),),

                ],
              ),

            ],
          )



        ],
      ),
    );
  }
}
