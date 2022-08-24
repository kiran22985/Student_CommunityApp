import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/common/widgets/custom_textfield.dart';
import 'package:mistri/features/auth/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      
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
                          'Welcome To EventBeep',
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
                          key: _signInFormKey,
                          child: Column(
                            children: [
                              CustomeTextField(
                                  controller1: _emailController,
                                  labelText: 'Email',
                                  hintText: 'Enter email here'),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomeTextField(
                                  labelText: 'password',
                                  hintText: 'Enter password here',
                                  controller1: _passwordController),
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
                          if (_signInFormKey.currentState!.validate()) {
                            signInUser();
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
                            Navigator.pushNamed(context, '/register1');
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
