import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static const String routeName = '/about';
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber.shade100,
      body: SafeArea(child: Container(
        height: 600,
        decoration: BoxDecoration(
          
          color:Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ) ,
        margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
        //alignment: Alignment.center,
        child: Column(children: [
          CircleAvatar(
            backgroundColor: Colors.greenAccent[400],
            radius: 60,
            child: Text(
              'Mistri.com',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ), //Text
          ),
          SizedBox(height: 20,),
          const Text('Mistri is an online home services platform. The platform helps customer book reliable and high quality services like-- beauty treatments, massages,haircuts,home cleaning, handymen, appliance repair, painting, pest control,and more delivered by trained professionals conveniently at home. Mistri vision is to empower millions of professionals worldwide to deliver services at home like never before',textAlign:TextAlign.left,textScaleFactor: 1.5,),
        ],)

      )),
      
    );
  }
}