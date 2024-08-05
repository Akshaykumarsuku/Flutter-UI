import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourguid/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late DateTime selectedDate; // Variable to store selected date

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now(); // Initialize with current date
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2023/12/21115117/kohzikode.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 880,
            height: 580,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/6213/6213814.png"),
                  opacity: 0.5,
                  fit: BoxFit.none,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue.withOpacity(0.5),
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Column(
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Main(),));
                                }, child: Text('Click to View Whats Inside?', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),)),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      isDense: true,
                                      counterText: '',
                                      hintStyle: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                      ),
                                      hintText: 'Email Address',
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    keyboardType:
                                    TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 250,
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        isDense: true,
                                        counterText: '',
                                        hintStyle: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10),
                                        hintText: 'Password',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      keyboardType:
                                      TextInputType.visiblePassword,
                                      obscureText: true,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 250,
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add your login logic here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50),
                                        ),
                                        padding: EdgeInsets.all(0),
                                      ),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.blueAccent,
                                              Colors.greenAccent,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: double.infinity,
                                            minHeight: 50,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Login',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: SizedBox(
                                    width: 210,
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add logic for Google login
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        padding: EdgeInsets.all(0),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 45),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
                                              radius: 13,
                                            ),
                                          ),
                                          Text(
                                            'Login With Google',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          backgroundColor:
                                          Colors.white.withOpacity(0.9),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "Sign Up",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "It's quick and easy",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                    height: 60,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                        fillColor: Colors.white,
                                                        hintStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 8,
                                                        ),
                                                        helperText: 'First Name',
                                                      ),
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .characters,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(left: 20),
                                                    child: SizedBox(
                                                      width: 150,
                                                      height: 60,
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          fillColor: Colors.white,
                                                          hintStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 8,
                                                          ),
                                                          helperText: 'Second Name',
                                                        ),
                                                        textCapitalization:
                                                        TextCapitalization
                                                            .characters,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 320,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    hintText: 'Date of Birth',
                                                    hintStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 8,
                                                    ),
                                                    helperText: 'Date of Birth',
                                                    suffixIcon: IconButton(
                                                      icon: Icon(Icons.calendar_today),
                                                      onPressed: () {
                                                        _selectDate(context);
                                                      },
                                                    ),
                                                  ),
                                                  readOnly: true,
                                                  controller: TextEditingController(
                                                      text:
                                                      '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 320,
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    hintStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 8,
                                                    ),
                                                    helperText: 'Mobile Number',
                                                  ),
                                                  keyboardType: TextInputType.number,
                                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                                  maxLength: 10,
                                                ),
                                              ),
                                          SizedBox(
                                            width: 320,
                                            height: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                fillColor: Colors.white,
                                                hintStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 8,
                                                ),
                                                helperText: 'Email address',
                                              ),
                                              textCapitalization:
                                              TextCapitalization
                                                  .characters,
                                              keyboardType:
                                              TextInputType.emailAddress,
                                              textInputAction: TextInputAction.next,
                                            ),
                                          ),
                                              SizedBox(
                                                width: 320,
                                                height: 50,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 8),
                                                    helperText: 'Password',
                                                  ),
                                                  keyboardType:
                                                  TextInputType.visiblePassword,
                                                  obscureText: true,
                                                  textInputAction: TextInputAction.done,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 40),
                                                child: SizedBox(
                                                  width: 250,
                                                  height: 40,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      // Add your login logic here
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(50),
                                                      ),
                                                      padding: EdgeInsets.all(0),
                                                    ),
                                                    child: Ink(
                                                      decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                          colors: [
                                                            Colors.greenAccent,
                                                            Colors.blueAccent,
                                                          ],
                                                          begin: Alignment.topCenter,
                                                          end: Alignment.bottomCenter,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(12),
                                                      ),
                                                      child: Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth: double.infinity,
                                                          minHeight: 50,
                                                        ),
                                                        alignment: Alignment.center,
                                                        child: Text(
                                                          'Sign up',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Create an account?',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: VerticalDivider(
                        color: Colors.greenAccent,
                        indent: BorderSide.strokeAlignOutside,
                        endIndent: BorderSide.strokeAlignCenter,
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100, left: 50),
                          child: Text(
                            "EXCURSIA",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        Text("This Excursia is to view or find the hidden tourist spots in kerala",style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
