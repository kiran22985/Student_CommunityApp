import 'package:mistri/constants/global_variables.dart';
import 'package:mistri/features/auth/screen/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

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
              Text('Services',style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
              InkWell(
                  onTap: (){},
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
            height: 200,
            child: GridView.builder(
                  itemCount: GlobalVariables.categoryImages.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.1
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    //return Image.asset(images[index]);
                    return GestureDetector(
              onTap: () => navigateToCategoryPage(
                context,
                GlobalVariables.categoryImages[index]['title']!,
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          GlobalVariables.categoryImages[index]['image']!,
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Text(
                    GlobalVariables.categoryImages[index]['title']!,
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
              
        ],
      ),
      );
  }
}