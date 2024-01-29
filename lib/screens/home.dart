import 'package:firebase_auth_otp/screens/button.dart';
import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: GestureDetector(child: CircleAvatar(
        radius: 6,
        backgroundColor:Colors.black ,
        
      ),onTap: () {
        print('profile');
      },
      ),
      
      leadingWidth: 6,
       ),
      body: Column(
       children: [
         SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 width:double.infinity,
                 child: Card(
                   elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                
                 ),
                 height: 100,
                // width: 100,
               ),
               Container(
                 height: 100,
                 width: 100,
               ),
             ],

             
           ),
         ),
         SizedBox(height: 20,),
         Container(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Button(ButtonName: 'button1'),
                    Button(ButtonName: 'button2'),
                    Button(ButtonName: 'button3'),
                    Button(ButtonName: 'button4'),
                  ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Button(ButtonName: 'button5'),
                    Button(ButtonName: 'button6'),
                    Button(ButtonName: 'button7'),
                    Button(ButtonName: 'button8'),
                  ],
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  child: Container(
                    height: 150,
                    width: 150,
                  ),
                )
              ],
            ),
          ),
          
         ),
          BottomNavigationBar(
            onTap: (index){
              setState(() {
                myIndex=index;
              });
           
            },
            currentIndex: myIndex,
            items:
         [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_sharp,),
        label: 'Home'),
       
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,),
        label: 'Add Tournament',
        
        ),
         BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,),
        label: 'show Tournament',
        
        ),
        BottomNavigationBarItem(icon: Icon(Icons.history_outlined),
        label: 'Game History')
        ],
         )
       ],
      ),
    );
  }
}
