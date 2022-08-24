import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/common/widgets/custom_textfield.dart';
import 'package:mistri/features/auth/services/professional_services.dart';

class ProRegPage2 extends StatefulWidget {
  static const String routeName = '/proreg2';
  const ProRegPage2({Key? key}) : super(key: key);

  @override
  State<ProRegPage2> createState() => _ProRegPage2State();
}

class _ProRegPage2State extends State<ProRegPage2> {
  final _signUpFormKey2 = GlobalKey<FormState>();

  final ProService proService = ProService();
  final TextEditingController _emailController2 = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();
  final TextEditingController _nameController2 = TextEditingController();
  final TextEditingController _phoneController2 = TextEditingController();
  final TextEditingController _addressController2 = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  String profession1 = "Select profession";
  String time1 = "Select service time";
  String charge1 = "Select service charge";
  List<String> profession = [
    'Select profession',
    'carpenter',
    'Electrician',
    'beautician',
    'Plumbers',
    'photographer',
    'interior designer'
  ];
  List<String> time = [
    'Select service time',
    '12PM',
    '1PM',
    '3PM',
    '11AM',
    '2PM',
    '4PM'
  ];
  List<String> charge = [
    'Select service charge',
    '1000',
    '100',
    '500',
    '200',
    '150',
    '600'
  ];
  @override
  void dispose() {
    super.dispose();
    _emailController2.dispose();
    _passwordController2.dispose();
    _nameController2.dispose();
  }
  void addProfessional() {
    proService.signupProfessional(
      context: context,
      email: _emailController2.text,
      password: _passwordController2.text,
      fullName: _nameController2.text,
      phone: _phoneController2.text,
      address: _addressController2.text,
      profession1: profession1,
      time1: time1,
      charge1: charge1,
      description: _desController.text
      );
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
                        key: _signUpFormKey2,
                        child: Column(
                          children: [
                            CustomeTextField(
                                controller1: _nameController2,
                                labelText: 'FullName',
                                hintText: 'Enter full name'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _emailController2,
                                labelText: 'Email',
                                hintText: 'Enter email here'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _phoneController2,
                                labelText: 'Phone',
                                hintText: 'Enter phone here'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                controller1: _addressController2,
                                labelText: 'Address',
                                hintText: 'Enter address here'),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeTextField(
                                labelText: 'password',
                                hintText: 'Enter password here',
                                controller1: _passwordController2),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin:  const EdgeInsets.only(left: 15),
                              
                              child: SizedBox(

                                width: double.infinity,
                                child: DropdownButton(
                                  value: profession1,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: profession.map((String item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newVal) {
                                    setState(() {
                                      profession1 = newVal!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                width: double.infinity,
                                child: DropdownButton(
                                  value: time1,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: time.map((String item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newVal) {
                                    setState(() {
                                      time1 = newVal!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                width: double.infinity,
                                child: DropdownButton(
                                  value: charge1,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: charge.map((String item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newVal) {
                                    setState(() {
                                      charge1 = newVal!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 80,
                              padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                              child: Material(
                                  //elevation: 5,
                                  child: CustomeTextField(
                                labelText: 'Description',
                                hintText: 'Description',
                                controller1: _desController,
                                maxLines: 10,
                              )),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.only(left: 20),
                  // ),
                  CustomButton(
                      text: 'Submit',
                      onTap: (){
                        if (_signUpFormKey2.currentState!.validate()) {
                             addProfessional() ;
                    }
                      },
                  ),
                ],
              ),
            ),
          ),
        ))));
  }
}
