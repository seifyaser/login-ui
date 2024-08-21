import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/components/button.dart';
import 'package:project/components/squrare_tile.dart';
import 'package:project/components/textfield.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});

//text editing controllers
final usernameController = TextEditingController();
final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background,
      body: 
      //safearea to keep away from notch of screen
     SafeArea(
        child: Center(
          child: ListView(
            children: [
              //logo
              const SizedBox(height: 40,),
              //animated icon
                    Lottie.asset('assets/Animation - 1720925605819.json',height: 180),
          //  const Icon(Icons.lock,
          //  color: Colors.black,
          //     size: 150,
          //     ),

const SizedBox(height: 20,),

//welcome back text
Center(
  child: Text('Welcome back u\'ve been missed !',
  style: TextStyle(color: Colors.grey[700],
  fontSize: 20,),
  ),
),

const SizedBox(height: 35,),

//username textfiled
MyTextField(
hintText: 'UserName',
obsecureText: false,
 controller: usernameController,
),

const SizedBox(height: 10,),

//password textfield
MyTextField(
hintText: 'Password ',
obsecureText: true,
 controller: passwordController,
),

const SizedBox(height: 10,),

//forget password
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('Forgot Password?',
      style: TextStyle(color: Colors.grey[600],fontSize: 16,fontWeight: FontWeight.normal),
      
      ),
    ],
  ),
),

const SizedBox(height: 14,),

//signin button
MyButton(onTap: () {  },),

const SizedBox(height: 35,),

//or continue with message
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
  child: Row(
    children: [
      Expanded(
        child: Divider(
          thickness: 0.5,
          color: Colors.grey[400],
        ),
      ),
  
      Text('Or continue with',style: TextStyle(color: Colors.grey[700]),),
  
       Expanded(
        child: Divider(
          thickness: 0.5,
          color: Colors.grey[400],
        ),
      ),
    ],
  ),
),

const SizedBox(height: 35,),

//google ... signin buttons
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SquareTile(imagePath: 'assets/apple.png'),
    const SizedBox(width: 15,),
SquareTile(imagePath: 'assets/facebok.png'),
    const SizedBox(width: 15,),
SquareTile(imagePath: 'assets/google.jpg'),

  ],
),

const SizedBox(height: 45,),

//not a member register text
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Not a member ?',style: TextStyle(color: Colors.black),),
    const SizedBox(width: 4,),
    Text('Register now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
  ],
)
            ],
          ),
        ),
      ),
    );
  }
}