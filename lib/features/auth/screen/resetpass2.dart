import 'package:flutter/material.dart';

class ResetPage2 extends StatefulWidget {
  static const String routeName = '/reset2';
  const ResetPage2({ Key? key }) : super(key: key);

  @override
  State<ResetPage2> createState() => _ResetPage2State();
}

class _ResetPage2State extends State<ResetPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: Image(image: AssetImage('assets/images/openmail.PNG')),
            ),
            SizedBox(height: 30,),
            Text('Check your email',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            Container(
              width: 350,
              child: Text('We have sent a password recover instructions to your mail.',textAlign: TextAlign.center,style: TextStyle(
                
              ),),

            ),
            SizedBox(height: 30,),
            
            ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/reset3');
                  },
                  
                   child: const Text('Open your mail',textScaleFactor: 1.2,),style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size(250,40),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    
                  ),
                  ),
                  SizedBox(height: 20,),
                  Text('Skip, I\'ll confirm later')
            
          ],
        )),
      ),
      
    );
  }
}