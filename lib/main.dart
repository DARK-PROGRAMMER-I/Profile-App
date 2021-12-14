// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "My Profile",
        home: EditProfile()
    );
  }
}


class EditProfile extends StatefulWidget{
  @override
  _EditProfileState createState() => _EditProfileState();

}



class _EditProfileState extends State <EditProfile>{
  bool showPass= false;
  @override
  Widget build(BuildContext context ){
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
              icon: Icon(Icons.arrow_back,
                color:  Colors.black87,),
              onPressed: (){} ),

          actions: [
            IconButton(
              icon: Icon(Icons.settings,
                color: Colors.black87,),
              onPressed: (){},)
          ],


        ),


        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          child: ListView(
            children: [
              Text("Dark_NFT",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox( // This is use to add space between text and the image
                height: 15,
              ),


              // Now we will use Stack Widget to add Image and icon above it
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0,10),
                            color: Colors.black87.withOpacity(0.2)

                          )
                        ],
                          image: DecorationImage(
                            image: AssetImage("assets/img/art.png"),
                            fit: BoxFit.fill,


                          )
                      ),

                    ),
                    Positioned(
                      // Now to position the icon on the bottom, we will have to set right and botom to 0.

                      bottom: 0,
                      right: 0,

                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor
                          ),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          shape: BoxShape.circle


                        ),
                        child: Icon(Icons.edit,
                        color: Colors.black87,),


                      ),
                    ),
                  ],  // childeren
                ),
              ),
              buildTextField("Full Name", "Dark NFTs", false),
              buildTextField("Email ", "darkprogrammer.i.a@gmail.com", false),
              buildTextField("Passward", "**********", true),
              buildTextField("Country", "Pakistan", false),

              SizedBox(
                height: 35,


              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: (){},
                    child: Text("Cancel",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      letterSpacing: 2.2

                    ),),

                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.black87,
                    onPressed: () {},
                  child: Text("Save",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    letterSpacing: 2.2,
                  ),),
                  )
                ],
              ),

            ]
            ,),


        )



    );
    }  // build context


    TextField buildTextField(String label_text, String place_holder, bool isPasswordTextField ){
    return TextField(
      obscureText: isPasswordTextField ? showPass: false,  // we have passed boolean value to it so that this property will only active when its true

      decoration: InputDecoration(
        suffixIcon: isPasswordTextField ? IconButton(
          icon: Icon(Icons.remove_red_eye),
          onPressed: (){
            setState(() { // this function is used so that it could tell the app that on pressed the state has been modified.
              showPass = !showPass;
            });
          },
        ): null,

        contentPadding: EdgeInsets.only(top: 35, bottom: 35),
        labelText: label_text,
        labelStyle: TextStyle(

          fontSize: 18
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: place_holder,

        hintStyle: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ) ,

      ),

    );

    }

    // PasswordCredential passward(String label, String passw){
    // return PasswordCredential{
    //
    // }


}