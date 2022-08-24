import 'package:flutter/material.dart';
import 'package:mistri/constants/global_variables.dart';

class ViewService2 extends StatefulWidget {
  static const String routeName = '/viewservice2';
  const ViewService2({ Key? key }) : super(key: key);

  @override
  State<ViewService2> createState() => _ViewService2State();
}

class _ViewService2State extends State<ViewService2> {
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
                child: const Text('Electricians, plumbers & \n carpenters',style:TextStyle(
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
                height: 100,
                child: const Image(image: AssetImage('assets/images/electrician.png'))),
              title: const Text(
                'Electrician',
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
                height: 100,child: const Image(image: AssetImage('assets/images/plumbers.png',),width: 70,)),
              title: const Text(
                'Plumbers',
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
                height: 100,child: const Image(image: AssetImage('assets/images/carpenter.png'))),
              title: const Text(
                'Carpenters',
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
                height: 100,child: const Image(image: AssetImage('assets/images/furniture.png'))),
              title: const Text(
                'Furniture Making and Polish',
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