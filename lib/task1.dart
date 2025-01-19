import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget{
  const SignUp({super.key});

  @override
  Widget build(BuildContext context){
    final TextEditingController firstNameController = TextEditingController();
    final  TextEditingController lastNameController = TextEditingController();
    final TextEditingController phoneNumber = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder()
                  ),
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: "Last Name",
                  ),
                ),
                SizedBox(height: 16,),
              ],
            ),
            TextFormField(
              controller: phoneNumber,
              decoration: InputDecoration(
                labelText: "Phone Number",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}

