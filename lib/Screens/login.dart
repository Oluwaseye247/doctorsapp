import 'package:doctorsapp/Screens/home.dart';
import 'package:doctorsapp/Screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.all(20),
                child: Image(
                    image: AssetImage('assets/doctor5.png')),
                ),
                SizedBox(height: 20),
                Padding(padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Username"),
                      prefixIcon: Icon(Icons.person)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextField(
                   obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter Password"),
                        prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: (){
                         if(passToggle == true) {
                           passToggle = false;
                          } else {
                           passToggle = true;
                          }
                         setState(() {

                         });
                        },
                       child: passToggle
                           ? Icon(CupertinoIcons.eye_slash_fill)
                           : Icon(CupertinoIcons.eye_fill)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric
                        (vertical: 15, horizontal: 150),
                      child: Text('LOGIN',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?'),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                        child: Text('Create Account',style: TextStyle(
                          color: Colors.blue,)),)
                  ],
                )
              ],
            ))
      ),
    );
  }
}
