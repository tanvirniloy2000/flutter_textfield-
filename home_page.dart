import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  
  @override
  Widget build(BuildContext context, dynamic icons) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.amberAccent,
        title: Text("text field example",style: TextStyle(
          color: const Color.fromARGB(255, 235, 228, 228)
        ),),
      ),
      body: Column(
        children: [
        
        //email input
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "email",
                hintText: "enter your email address",
                prefixIcon: Icon(icons.email)
              ),
            ),
          ),

        
         //password input
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: TextField(
            controller: passwordcontroller,
            obscureText: true,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              labelText: "password",
              hintText: "enter pour password",
              prefixIcon: Icon(icons.lock),
            ) ,
           ),
         ),
         SizedBox(height: 20,),

         //button input
         SizedBox(
          width: 200,
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              backgroundColor: colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              )
            ),
            onPressed: () {
              String email=emailcontroller.text;
              String password=passwordcontroller.text;

              if (!email.contains("@") || email.contains("."))

            {
              fluttertoast.showtoast(msg: "invalid email");
            }
              else if(password.length<4)

              {
                fluttertoast.showtoast(msg: "password should be at least 4 characters long");
              }
              else 
              {
                fluttertoast.showtoast(msg: "success. email: "email+" password : " +passwword);

              }
              

            },
            child: Text("submit",style: TextStyle(
              color: Colors.amberAccent
              fontSize: 18,
            ),)
           ),
         )
        ],
      ),
    );
  }
}

mixin colors {
  var ;
}