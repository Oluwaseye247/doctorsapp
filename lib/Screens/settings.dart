import 'package:doctorsapp/widget/nav_bar_root.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Settings',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: 30,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/doctor1.jpeg"),
          ),
          title: Text(
            "Dr. Doctors Name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
                color: Colors.black
            ),
            
          ),
          subtitle: Text("Profile"),
        ),
        Divider(height: 50,),
        ListTile(
          onTap: (){},
          leading: Container(
          padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
                  shape: BoxShape.circle
            ),
            child: Icon(CupertinoIcons.person,
            color: Colors.blue,
            size: 34,),
        ),
          title: Text('Profile',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
          ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        SizedBox(height: 20,),
        ListTile(
          onTap: (){},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.shade100,
                shape: BoxShape.circle
            ),
            child: Icon(Icons.notifications_none_outlined,
              color: Colors.deepPurple,
              size: 34,),
          ),
          title: Text('Notifications',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        SizedBox(height: 20,),
        ListTile(
          onTap: (){},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.indigoAccent.shade100,
                shape: BoxShape.circle
            ),
            child: Icon(Icons.privacy_tip_outlined,
              color: Colors.indigo,
              size: 34,),
          ),
          title: Text('Privacy',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        SizedBox(height: 20,),
        ListTile(
          onTap: (){},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle
            ),
            child: Icon(Icons.settings_outlined,
              color: Colors.green,
              size: 34,),
          ),
          title: Text('Settings',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        SizedBox(height: 20,),
        ListTile(
          onTap: (){},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle
            ),
            child: Icon(Icons.info_outline_rounded,
              color: Colors.orange,
              size: 34,),
          ),
          title: Text('About Us',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        Divider(height: 40,
        color: Colors.black,),
        ListTile(
          onTap: (){},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                shape: BoxShape.circle
            ),
            child: Icon(Icons.logout,
              color: Colors.red,
              size: 34,),
          ),
          title: Text('Log Out',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    ),
    );
  }
}
