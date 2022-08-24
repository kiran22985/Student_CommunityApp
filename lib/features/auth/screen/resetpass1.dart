import 'package:flutter/material.dart';

class ResetPage1 extends StatefulWidget {
  static const String routeName = '/reset1';
  const ResetPage1({ Key? key }) : super(key: key);

  @override
  State<ResetPage1> createState() => _ResetPage1State();
}

class _ResetPage1State extends State<ResetPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reset Password',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            Container(
              width: 350,
              child: Text('Enter the email associated with your account and will send an email with instructions to reset your password.',textAlign: TextAlign.center,style: TextStyle(
                
              ),),

            ),
            SizedBox(height: 30,),
            Text('Email address',style: TextStyle(
              fontWeight: FontWeight.bold,
              //fontSize: 20
            ),),
            Container(
                height: 40,
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Material(
                  //elevation: 10.0,
                  shadowColor: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress, 
                    decoration: InputDecoration(
                      hintText: 'anushkagiri2298@gmail.com',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                        
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/reset2');
                  },
                  
                   child: const Text('Send instructions',textScaleFactor: 1.2,),style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size(250,40),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    
                  ),
                  )
            
          ],
        )),
      ),
      
    );
  }
}

