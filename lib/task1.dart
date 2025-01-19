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
    final TextEditingController dateOfBirth = TextEditingController();
    final TextEditingController age = TextEditingController();
    final TextEditingController address = TextEditingController();
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
                SizedBox(
                  width: 150,
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: 150,
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                    ),
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
            TextFormField(
              controller: dateOfBirth,
              decoration: InputDecoration(
                labelText: "Date of Birth",
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              controller: age,
              decoration: InputDecoration(
                labelText: "Age",
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              controller: address,
              decoration: InputDecoration(
                labelText: "Address",
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
                onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage(
                        firstName: firstNameController.text,
                        lastName
                      )),
                  );
                },
              child: Text("Continue",
              style: TextStyle(backgroundColor: Colors.blue, color: Colors.white),),
                ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(16,),
        child: Column(
          children: [
            Text("These are the details that you have provided while signup process",
            style: TextStyle(fontSize: 16)),
            SizedBox(height: 16,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/LinkedIn_profile.jpg"),
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
