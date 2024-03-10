import 'package:flutter/material.dart';
import 'package:todo_app/common/genTextFormField.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Image.asset('assets/logo.png',
                height: 150,
                width: 150,
                ),
                SizedBox(height: 10,),
                Text('Signup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30.0,
                ),),
                SizedBox(height: 30,),
                genTextFormFeild(_conUserId, 'User ID', Icons.person,TextInputType.text),
                SizedBox(height: 10,),
                genTextFormFeild(_conUserId, 'User Name', Icons.person,TextInputType.name),
                SizedBox(height: 10,),
                genTextFormFeild(_conUserId, 'Email', Icons.email,TextInputType.emailAddress),
                SizedBox(height: 10,),
                genTextFormFeild(_conPassword, 'Password', Icons.lock,isObscureText: true,TextInputType.visiblePassword),
                SizedBox(height: 10,),
                genTextFormFeild(_conPassword, 'Confirm Password', Icons.lock,isObscureText: true,TextInputType.visiblePassword),
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
                      child: Text('Signup',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('Existing user?   ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Click the button below to login',
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
                      onPressed: ()=>Navigator.pop(context), 
                      child: Text('Login',
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