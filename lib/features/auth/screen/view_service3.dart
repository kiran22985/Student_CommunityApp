import 'package:flutter/material.dart';
import 'package:mistri/constants/global_variables.dart';

class ViewService3 extends StatefulWidget {
  static const String routeName = '/viewservice3';
  const ViewService3({ Key? key }) : super(key: key);

  @override
  State<ViewService3> createState() => _ViewService3State();
}

class _ViewService3State extends State<ViewService3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text('Cleaning & Pest Control',style:TextStyle(
                  fontWeight: FontWeight.bold,color:Colors.black,
                )),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row( 
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40,),
          Container(
            
            //color: Colors.blue[50],
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,child: const Image(image: AssetImage('assets/images/bathroom.png'))),
              title: const Text(
                'Bathroom And Kitchen Cleaning',
                textScaleFactor: 1.2,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              
              onTap: () {
                
              },
            ),
          ),
          SizedBox(height: 30,),
          Container(
            
            //color: Colors.blue[50],
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,child: const Image(image: AssetImage('assets/images/fullhome.png',))),
              title: const Text(
                'Full Home Cleaning ',
                textScaleFactor: 1.2,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              
              onTap: () {
                
              },
            ),
          ),
          SizedBox(height: 30,),
          Container(
            
            //color: Colors.blue[50],
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,child: const Image(image: AssetImage('assets/images/sofa.png'))),
              title: const Text(
                'Sofa and Carpet Cleaning',
                textScaleFactor: 1.2,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              
              onTap: () {
                
              },
            ),
          ),
          
          SizedBox(height: 30,),
          Container(
            
            //color: Colors.blue[50],
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,child: const Image(image: AssetImage('assets/images/disinfection.png'))),
              title: const Text(
                'Disinfection sevvices',
                textScaleFactor: 1.2,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              
              onTap: () {
                
              },
            ),
          ),
          
        ],
      ),
      
    );
  }
}