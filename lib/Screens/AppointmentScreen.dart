import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
   List Imgs = [
       "doctor1.jpeg",
       "doctor2.jpeg",
       "doctor3.jpeg",
       "doctor4.jpeg",
       "doctor5.jpeg",
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body: SingleChildScrollView(
           child: Column(
              children : [
                SizedBox(
                  height: 50
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Stack(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new,
                            color: Colors.white,
                                size: 23,),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Icon(Icons.more_vert,
                              color: Colors.white,
                              size: 23,),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             CircleAvatar(
                               backgroundImage: AssetImage("assets/doctor1.jpeg"),
                             ),
                             SizedBox(height: 15,),
                             Text('Dr.Doctors Name',
                             style: TextStyle(
                               fontSize: 23,
                               fontWeight: FontWeight.w500,
                               color: Colors.white

                             ),),
                             Text('Terapist',
                               style: TextStyle(

                                   fontWeight: FontWeight.bold,
                                   color: Colors.white

                               ),),
                             SizedBox(
                               height: 15,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                     color: Colors.lightBlueAccent,
                                     shape: BoxShape.circle
                                   ),
                                   child: Icon(Icons.call,
                                   color: Colors.white,
                                   size: 25),
                                 ),
                                 SizedBox(width: 20,),
                                 Container(
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                       color: Colors.lightBlueAccent,
                                       shape: BoxShape.circle
                                   ),
                                   child: Icon(CupertinoIcons.chat_bubble_text_fill,
                                       color: Colors.white,
                                       size: 25),
                                 ),
                               ],
                             )
                           ],
                         ),
                      )
                    ],
                  ),),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,

                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 15,

                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                           Text('About Doctor',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.w500
                           ),),
                      SizedBox(height: 5,),
                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text('Review',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(Icons.star,
                          color: Colors.amber,),
                          Text('4.9',
                            style: TextStyle(

                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("(124)",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: (){},
                              child: Text("See More"))
                        ],
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                 margin: EdgeInsets.all(10),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 2,
                                      ),
                                    ]
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.4,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                      radius: 25,
                                    backgroundImage: AssetImage("assets/${Imgs[index]}")
                                  ),
                                        title: Text('Dr. Doctors Name',
                                          style: TextStyle(
                                            fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        subtitle: Text('1 Day ago'),
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                            color: Colors.amber,),
                                            Text('4.9',
                                            style: TextStyle(
                                              color: Colors.black54
                                            ),)
                                          ],
                                          
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Text('Dr names are the best doctors in africa kindly send a message ')
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Location",
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.location_on,
                          color: Colors.blue,),
                        ),
                        title: Text("lagos lekki medical road",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Address line of medical centre",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]
            )
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 2,
              spreadRadius: 2
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Text("Consultation Price",style: TextStyle(
                     fontSize: 12,
                     color: Colors.black54
                   ),),
                Text("\$200",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54
                ),)

              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("Book Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
