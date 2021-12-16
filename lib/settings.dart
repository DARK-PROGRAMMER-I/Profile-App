


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfSettings extends StatefulWidget {
  const ProfSettings({Key? key}) : super(key: key);

  @override
  _ProfSettingsState createState() => _ProfSettingsState();
}

class _ProfSettingsState extends State<ProfSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),

        ),
      ),

      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: ListView(
          children: [
            Scrollbar(
                child: Text("Settings",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),


            ),
            SizedBox(
              height: 25,
            ),

            // Now we will add a row widget.
            Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(
                  width: 10,
                ),
                Text("Account ", style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),

            // Adding Divider Widget
            Divider(
              height: 26,
              thickness: 2,
            ),
            SizedBox(
              height: 18,
            ),

            // Now instead of calling row again and again, we made a fucntion to do this job for us.)
            text_row("Change Passward"),
            SizedBox(
              height: 18,
            ),
            text_row("Content Setting"),
            SizedBox(height: 18,),
            text_row("Social"),
            SizedBox(height: 18,),
            text_row("Language"),
            SizedBox(height: 18,),
            text_row("Privacy and Accuracy")





          ],
        ),
      ),
    );

  }

  text_row(String name){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(name, style: TextStyle(color: Colors.black54, fontSize: 16),),
        Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 16,)
      ],
    );

  }
}
