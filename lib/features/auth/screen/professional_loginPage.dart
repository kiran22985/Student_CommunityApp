import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/common/widgets/custom_textfield.dart';
import 'package:mistri/features/auth/services/auth_services.dart';
import 'package:mistri/features/auth/services/professional_services.dart';

class Professional_LoginPage extends StatefulWidget {
  static const String routeName = '/professionallogin';
  const Professional_LoginPage({Key? key}) : super(key: key);

  @override
  State<Professional_LoginPage> createState() => _Professional_LoginPageState();
}

class _Professional_LoginPageState extends State<Professional_LoginPage> {
  final _signInFormKey2 = GlobalKey<FormState>();
  final ProService proService = ProService();
  final TextEditingController _emailController2 = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController2.dispose();
    _passwordController2.dispose();
  }

  void signInProfessional() {
    proService.signInProfessional(
      context: context,
      email: _emailController2.text,
      password: _passwordController2.text,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SafeArea(
              child: SingleChildScrollView(
            child: Form(
              //key:loginform,
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 30,
                          color: Colors.blue,
                          child: const Text(
                            'M',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Welcome To Mistri',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Login Your Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      child: const Text(
                        'Enter your username and password to access your account or create an account',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                          key: _signInFormKey2,
                          child: Column(
                            children: [
                              CustomeTextField(
                                  controller1: _emailController2,
                                  labelText: 'Email',
                                  hintText: 'Enter email here'),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomeTextField(
                                  labelText: 'password',
                                  hintText: 'Enter password here',
                                  controller1: _passwordController2),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reset1');
                        },
                        child: const Text(
                          'Forget password',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              decoration: TextDecoration.underline),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                        text: 'Login',
                        onTap: () {
                          if (_signInFormKey2.currentState!.validate()) {
                            signInProfessional();
                          }
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('Don\'t have an account?',
                          style: TextStyle(fontSize: 15)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/proreg2');
                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ))
                    ]),
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
