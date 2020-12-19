import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Avatar del usuario
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(100)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(image: AssetImage('assets/avatar.jpg'))
              )
            ),


            Stack(
              children: [
                
                Icon( Icons.notifications_active_outlined, size: 35, ),
                Positioned(
                  right: 0,
                  child: Icon( Icons.circle, color: Color(0xff4DCBE0), size: 15, ),
                ),
              ],
            )
            


          ],
        ),
      ),
    );
  }
}