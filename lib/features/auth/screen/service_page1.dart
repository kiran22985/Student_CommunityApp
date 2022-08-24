import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';
import 'package:mistri/constants/global_variables.dart';
import 'package:mistri/features/auth/screen/category_deals_screen.dart';

class SErvicePage1 extends StatelessWidget {
  static const String routeName = '/servicepage1';
   SErvicePage1({ Key? key }) : super(key: key);



void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }
  @override
  
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Column(
        children: [
          SizedBox(height: 20,),    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Women\'s salon and spa',style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/viewservice1');
                  },
                  child: const Text('view all',style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 380,
            child: GridView.builder(
                  itemCount: GlobalVariables.ServiceImages1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.1
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    //return Image.asset(images[index]);
                    return GestureDetector(
              onTap: () => navigateToCategoryPage(
                context,
                GlobalVariables.ServiceImages1[index]['title']!,
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      GlobalVariables.ServiceImages1[index]['image']!,
                      fit: BoxFit.cover,
                      height: 150,
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    GlobalVariables.ServiceImages1[index]['title']!,
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
                    Navigator.pushNamed(context, '/viewservice1');
                  })
        ],
      ),
      );
    
    
  }
}