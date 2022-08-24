import 'package:flutter/material.dart';

class OTP2 extends StatefulWidget {
  static const String routeName = '/otp2';
  const OTP2({Key? key}) : super(key: key);

  @override
  State<OTP2> createState() => _OTP2State();
}

class _OTP2State extends State<OTP2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/otp.png'),
                width: 350,
                height: 230,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Check your email and enter the code below ',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Material(
                        elevation: 10,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Material(
                        elevation: 10,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Material(
                        elevation: 10,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Material(
                        elevation: 10,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verified');
                },
                child: const Text(
                  'Submit',
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
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Don\'t receive the code?',
                    style: TextStyle(fontSize: 15)),
                TextButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ))
              ])
            ],
          ),
        ),
      )),
    );
  }
}
