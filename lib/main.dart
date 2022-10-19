import 'package:flutter/material.dart';

 void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp ({super. key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center( 
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(46)),
            color: Colors.white,
            margin: EdgeInsets.only(top:20),
            child: SizedBox(
              width: 390.2,
              height: 630,
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 66.0,backgroundColor: Colors.grey,backgroundImage: NetworkImage("https://img.freepik.com/vector-gratis/logo-diseno-pajaro-dorado_1195-336.jpg?w=740&t=st=1666153903~exp=1666154503~hmac=27a22ee5702e0a2a48aa35318a3b68d1e3fbc603f1c61099e0f31dfbd00e4a99.jpg"),),
                  Divider(thickness: 1.5, color: Colors.white12),
                Card(
                  margin: EdgeInsets.all(15.0),
                  elevation: 55.0,
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'username@gmail.com',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                      ),
                      const SizedBox (height: 20,),
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: true, 
                      ),
                      SizedBox(height: 20,),
                       Card(
                         child: Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(onPressed: () {}, child: Text("Login"),
                            style:ElevatedButton.styleFrom(minimumSize:Size(350,40)),)
                         ),
                         shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(40),
                        ),
                       ),
                       SizedBox(height: 20,),
                       Container(
                        padding: EdgeInsets.only(left: 1.0,right: 1.0),
                        alignment: Alignment.bottomLeft,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("Signup"),
                        Text("Forgot Password?"),
                       ],
                            )
                       )
                    ], 
                  )
                )
                ],
              ),
             ),
          ),
        )
      ),
    );
  }
}