import 'package:doctorsapp/Screens/home.dart';
import 'package:doctorsapp/Screens/login.dart';
import 'package:doctorsapp/widget/nav_bar_root.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavBarRoot()),
                  );
                },
                child: Text('SKIP',
                  style: TextStyle(
                  color: Colors.black,
                    fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: EdgeInsets.all(10),
            child: Image(image: AssetImage('assets/doctor5.png')),
            ),
            SizedBox(
              height: 50,
            ),
            Text('DOCTORS APPOINTMENT',style: TextStyle(
              fontSize: 25,
              letterSpacing: 1,
              wordSpacing: 2,
              color: Colors.purple,
            ),),
            Text('Appoint Your Doctor',style: TextStyle(
              fontSize: 19,
              color: Colors.black45,
            ),),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Material(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(10),
                   child: InkWell(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Login()),
                       );
                     },
                     child: Padding(
                         padding: EdgeInsets.symmetric
                           (vertical: 15, horizontal: 40),
                       child: Text('LOGIN',
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,

                       ),),
                     
                     ),
                   ),
                 ),Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric
                        (vertical: 15, horizontal: 40),
                      child: Text('SIGN UP',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),),

                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
