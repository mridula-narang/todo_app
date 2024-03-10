import 'package:flutter/material.dart';
import 'package:todo_app/common/genTextFormField.dart';
import 'package:todo_app/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do',
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Image.asset('assets/logo.png',
                height: 150,
                width: 150,
                ),
                SizedBox(height: 10,),
                Text('Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30.0,
                ),),
                SizedBox(height: 30,),
                genTextFormFeild(_conUserId, 'User Name', Icons.person,TextInputType.name),
                SizedBox(height: 10,),
                genTextFormFeild(_conPassword, 'Password', Icons.lock,isObscureText: true,TextInputType.visiblePassword),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                      onPressed: (){}, 
                      child: Text('Login',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('Not an existing user?   ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Click the button below to sign up',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup())), 
                      child: Text('Signup',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
