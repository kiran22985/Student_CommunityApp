import 'package:flutter/material.dart';

class VerifiedPage extends StatelessWidget {
  static const String routeName = '/verified';
  const VerifiedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 350,
              child: const Image(image: AssetImage('assets/images/verified.PNG')),
            ),
            const SizedBox(height:30),
            const Text('You are Verified',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
            const SizedBox(height:30),
            Container(
              width: 300,
              child: const Text('Congratulation to you. You are now verified. Let\'s go hurry up ',textAlign: TextAlign.center,style:TextStyle(fontSize: 15))
              ),
            const SizedBox(height: 40,),
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, '/verified');
                },
                child: const Text(
                  'Let\'s Go',
                  textScaleFactor: 1.2,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: const Size(150, 40),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
          ],
        )),
      ),


      
    );
  }
}