import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';

class ProRegPage1 extends StatefulWidget {
  static const String routeName = '/proreg1';
  const ProRegPage1({ Key? key }) : super(key: key);

  @override
  State<ProRegPage1> createState() => _ProRegPage1State();
}

class _ProRegPage1State extends State<ProRegPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: Column(
          children: [
            Stack(children: [
              Container(child: Image(image: AssetImage('assets/images/proauth.png')),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(50, 370, 30, 10),
                child: Text('Ready to earn more?\n Join professionals and earn more',textAlign: TextAlign.center,style:TextStyle(
                  color:Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
              )
            ],),
            SizedBox(height: 50,),
            Text('Create account/ Login into system',style:TextStyle(
                  
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(height:20),
             CustomButton(text: 'SignUp', onTap: (){
                    Navigator.pushNamed(context, '/proreg2');
                  }),
                  SizedBox(height:20),
             CustomButton(text: 'Login', onTap: (){
                    Navigator.pushNamed(context, '/professionallogin');
                  })    
          ],
        )));
  }
}