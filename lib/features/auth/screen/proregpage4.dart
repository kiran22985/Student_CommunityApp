import 'package:flutter/material.dart';

class ProRegPage4 extends StatefulWidget {
  static const String routeName = '/proreg4';
  const ProRegPage4({ Key? key }) : super(key: key);

  @override
  State<ProRegPage4> createState() => _ProRegPage4State();
}

class _ProRegPage4State extends State<ProRegPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                child: Image.asset('assets/images/thankyou.PNG')),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Thank you for registering',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Your Account will be verifyed soon',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, '');
                },
                child: const Text('Ok',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(150, 40),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}