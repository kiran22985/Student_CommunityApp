import 'package:flutter/material.dart';

class ResetPage3 extends StatefulWidget {
  static const String routeName = '/reset3';
  const ResetPage3({ Key? key }) : super(key: key);

  @override
  State<ResetPage3> createState() => _ResetPage3State();
}

class _ResetPage3State extends State<ResetPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create New Password',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            Container(
              width: 350,
              child: Text('Your new password must be different from previous used password',textAlign: TextAlign.center,style: TextStyle(
                
              ),),

            ),
            SizedBox(height: 30,),
            Text('Password',style: TextStyle(
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
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress, 
                    decoration: InputDecoration(
                      //hintText: 'anushkagiri2298@gmail.com',
                      labelText: '**********',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                        
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
            Text('Confirm Password',style: TextStyle(
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
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress, 
                    decoration: InputDecoration(
                      //hintText: 'anushkagiri2298@gmail.com',
                      labelText: '**********',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                        
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                    //Navigator.pushNamed(context, '/otp2');
                  },
                  
                   child: const Text('Reset password',textScaleFactor: 1.2,),style: ElevatedButton.styleFrom(
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