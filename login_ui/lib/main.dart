import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(  
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(251, 194, 235, 1),Color(0xffa6c1ee)],
          )
        ),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Column(
                  children: <Widget>[
                    Text(
                      "Welcome",




                      
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
      
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Hey Guys This is My LoginUI,Welcome!!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    
                    ),)
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/welcome1.png")
                    )
                  ),
                ),
      
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
      
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
                      },
                      color: const Color(0xff0095FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18
                        ),
                      ),
                    )
                  ],
                )
      
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}