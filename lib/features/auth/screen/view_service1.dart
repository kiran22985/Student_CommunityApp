import 'package:flutter/material.dart';
import 'package:mistri/constants/global_variables.dart';

class ViewService1 extends StatefulWidget {
  static const String routeName = '/viewservice1';
  const ViewService1({ Key? key }) : super(key: key);

  @override
  State<ViewService1> createState() => _ViewService1State();
}

//service page added to view all services
class _ViewService1State extends State<ViewService1> {
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
                child: const Text('Women\'s Salon and Spa',style:TextStyle(
                  fontWeight: FontWeight.bold,color:Colors.black,
                )),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Icon(
                      Icons.search,
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
                height: 100,child: const Image(image: AssetImage('assets/images/salonathomeforwomen.png'))),
              title: const Text(
                'Salon At Home For Women',
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
                height: 100,child: const Image(image: AssetImage('assets/images/spaforwomenat.png',))),
              title: const Text(
                'Spa For Women',
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
                height: 100,child: const Image(image: AssetImage('assets/images/Hair studio.png'))),
              title: const Text(
                'Hair Studio For Women',
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
                height: 100,child: const Image(image: AssetImage('assets/images/nailart.png'))),
              title: const Text(
                'Nail Studio For Women',
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
                height: 100,child: const Image(image: AssetImage('assets/images/laser.png'))),
              title: const Text(
                'Laser and /advanced facials',
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