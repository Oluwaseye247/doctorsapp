import 'package:doctorsapp/Screens/AppointmentScreen.dart';
import 'package:doctorsapp/widget/nav_bar_root.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List symptoms = [
    "temperature",
    "Snuffle",
    "Cough",
    "Cold",
  ];
  List img = [
    "doctor1.jpeg",
    "doctor2.jpeg",
    "doctor3.jpeg",
    "doctor4.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         padding: EdgeInsets.only(top: 60),
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("Hello Alex",
                 style: TextStyle(
                 fontSize: 30,
                   fontWeight: FontWeight.w500
               ),
               ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/doctor1.jpeg"),
              )
            ],
          )
          ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   InkWell(
                     onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                         BoxShadow(
                           color: Colors.white,
                           blurRadius: 10,
                           spreadRadius: 4,
                         ),


                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.add,
                              color: Colors.blue,
                              size: 35,),
                            ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Clinic Visits",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Make An Appointment",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,

                            ),
                          )
                        ],
                      ),
                    )
                   ),
                InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                            ),


                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white12,
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.home_filled,
                              color: Colors.blue,
                              size: 35,),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Home Visits",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Call The Doctor At Home",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black45,

                            ),
                          )
                        ],
                      ),
                    )
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("What are your Symptoms?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),

           SizedBox(
              height: 60,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Container(
                       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Colors.black12
                            )
                          ]
                        ),
                        child: Center(
                          child: Text(symptoms[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                          ),
                          ),
                        ),
                      );
    }
            ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Popular Doctors",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AppointmentScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                                blurRadius: 4,
                                color: Colors.black54
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/${img[index]}"),
                          ),
                          Text('Dr. Doctors name'),
                          Text('Terapist',
                          style: TextStyle(
                            color: Colors.black54
                          ),),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                 Icon(
                                   Icons.star,
                                       color: Colors.amber
                                 ),
                              Text('4.9')
                            ],
                          )
                        ],
                      ),
                    ),
                  );
              },
            )
          ],
        ),
      ),
    );
  }
}
