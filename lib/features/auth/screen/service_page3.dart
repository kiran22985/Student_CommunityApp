import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/constants/global_variables.dart';

class ServicePage3 extends StatelessWidget {
  const ServicePage3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Column(
        children: [
          const SizedBox(height: 20,),    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Cleaning & pest control',style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/viewservice3');
                  },
                  child: const Text('view all',style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                )
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            height: 380,
            child: GridView.builder(
                  itemCount: GlobalVariables.ServiceImages3.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.1
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    //return Image.asset(images[index]);
                    return GestureDetector(
              // onTap: () => navigateToCategoryPage(
              //   context,
              //   GlobalVariables.categoryImages[index]['title']!,
              // ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      GlobalVariables.ServiceImages3[index]['image']!,
                      fit: BoxFit.cover,
                      height: 150,
                      width: 200,
                    ),
                  ),
                  //const SizedBox(height: 5,),
                  Text(
                    GlobalVariables.ServiceImages3[index]['title']!,
                    style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                  ),

                ],
              ),
            );
                    
                    
                  },
                ),
              ),
              CustomButton(text: 'View all services', onTap: (){
                    Navigator.pushNamed(context, '/viewservice3');
                  })
        ],
      ),
      );
  }
}