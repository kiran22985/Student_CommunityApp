import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_textfield.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/features/auth/services/auth_services.dart';

class RegisterPage1 extends StatefulWidget {
  static const String routeName = '/register1';
  const RegisterPage1({Key? key}) : super(key: key);

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  final _signUpFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    authService.signupUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
        fullName: _nameController.text,
        phone: _phoneController.text,
        address: _addressController.text);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SafeArea(
                child: SingleChildScrollView(
          child: Form(
            //key:registerform,
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
                    'Creat An Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: const Text(
                      'Sign up with your own active email and new password or login into your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                            CustomeTextField(
                                controller1: _nameController,
                                labelText: 'FullName',
                                hintText: 'Enter full name'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _emailController,
                                labelText: 'Email',
                                hintText: 'Enter email here'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _phoneController,
                                labelText: 'Phone',
                                hintText: 'Enter phone here'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _addressController,
                                labelText: 'Address',
                                hintText: 'Enter address here'),
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
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                  ),
                  CustomButton(
                      text: 'Signup',
                      onTap: () {
                        if (_signUpFormKey.currentState!.validate()) {
                          signUpUser();
                        }
                        // Navigator.pushNamed(context, '/otp1');
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text('Already have an account?',
                        style: TextStyle(fontSize: 15)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ))
                  ])
                ],
              ),
            ),
          ),
        ))));
  }
}
