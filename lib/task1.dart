import 'package:flutter/material.dart';
import 'package:sample_flutter_project/resusable.dart';

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
    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController dateOfBirthController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF563A9C),
      appBar: AppBar(
        title: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF563A9C),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white, width: 2,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white, width: 2,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white, width: 2,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white, width: 2,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: phoneNumberController,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: dateOfBirthController,
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: ageController,
                decoration: InputDecoration(
                  labelText: "Age",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: addressController,
                decoration: InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 2,),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith<Color>((states)=>states.contains(WidgetState.disabled)?Colors.grey:Color(0xFFFFF7D1))),
                  onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage(
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          phoneNumber: phoneNumberController.text,
                          address: addressController.text,
                          age: ageController.text,
                          dateOfBirth: dateOfBirthController.text,
                        ),
                        ),
                    );
                  },
                child: Text("Continue",
                style: TextStyle(color: Colors.purple),),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String address;
  final String age;
  final String dateOfBirth;

  ProfilePage({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
    required this.age,
    required this.dateOfBirth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF563A9C),
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF563A9C),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16,),
        child: Column(

          children: [
            Text("These are the details that you have provided while signup process",
            style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 16,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/Profile.jpg"),
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  firstName,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  lastName,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 16,),
            randomContainer("Phone Number: $phoneNumber", context),
            randomContainer("Date of Birth: $dateOfBirth", context),
            randomContainer("Age: $age", context),
            randomContainer("Address: $address", context),
          ],
        ),
      ),
    );
  }
}
