import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final  ButtonName;
   Button({Key? key,required this.ButtonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.black,
                        foregroundColor: Colors.white,
                       // minimumSize: Size(double.infinity,50),
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        
                    ),
                     child: Text(ButtonName));
  }
}