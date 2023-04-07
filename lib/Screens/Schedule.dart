import 'package:doctorsapp/widget/Upcomming_Schedule.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int _buttonIndex = 0;

  final _ScheduleWidget = [
    UpcommingSchedule(),
    Center(child: Text("Completed"),),
    Center(child: Text("Cancelled"),),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,),

            child: Text("Schedule",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),)
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 0),
              decoration: BoxDecoration(
                color: _buttonIndex == 0 ? Color(0xFFF4F6FA) : Colors.transparent,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                              color: _buttonIndex == 0 ? Colors.blue : Colors.transparent
                        ),
                        child: Text("Upcomming"),
                      )
                    ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex == 1 ? Colors.blue : Colors.transparent
                        ),
                        child: Text("Completed"),
                      )
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex == 2 ? Colors.blue : Colors.transparent
                        ),
                        child: Text("Cancelled"),
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _ScheduleWidget[_buttonIndex]
          ],
        ),),
    );
  }
}


