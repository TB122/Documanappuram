import 'package:flutter/material.dart';

class Mysignuup extends StatefulWidget {
  Mysignuup({super.key});

  @override
  State<Mysignuup> createState() => _MysignuupState();
}

class _MysignuupState extends State<Mysignuup> {
  String? _gender;
  bool _isSelected = false;
  bool _formSubmitted = false;
  final fname = TextEditingController();

  final lname = TextEditingController();
  final number = TextEditingController();
  final email = TextEditingController();
  final passkey = TextEditingController();
  final cpasskey = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is required';
    }
    if (value.length < 2) {
      return 'Name must be greater than 2 characters';
    }
    return null;
  }

  String? validatePhonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneregx = RegExp(
        r'^\d{10}$'); //r-regular expression, '\d' -decimal number '{10}- limit'
    if (!phoneregx.hasMatch(value)) {
      return 'Enter a valid 10 digit phone number';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Feild is required';
    }
    final emailRegx = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegx.hasMatch(value)) {
      return 'Invalid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must contain atleast 8 characters';
    }
    if (!RegExp(r'[0-9]').hasMatch(value) ||
        !RegExp(r'[a-zA-Z]').hasMatch(value)) {
      return 'Password must contain letters and numbers';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm password required';
    }
    if (value != passkey.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? validateGender() {
    if (_gender == null && _formSubmitted) {
      return 'Please select a gender';
    }
    return null;
  }

  String? validateSubmission(bool isSelected) {
    if (!isSelected && _formSubmitted) {
      return 'You must confirm before submission';
    }
    return null;
  }

  void _submitForm() {
    setState(() {
      _formSubmitted = true;
    });
    if (formkey.currentState!.validate() && _gender != null && _isSelected) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Form sumbitted Successfully")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 350,
                child: TextFormField(
                  controller: fname,
                  validator: validateName,
                  decoration: const InputDecoration(
                      label: Text("First name"), border: OutlineInputBorder()),
                ),
              ),
              Container(
                width: 350,
                child: TextFormField(
                  controller: lname,
                  validator: validateName,
                  decoration: const InputDecoration(
                      labelText: "last name", border: OutlineInputBorder()),
                ),
              ),
              const Text("Gender :"),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text('Female'),
                      leading: Radio(
                        value: 'female',
                        groupValue: _gender,
                        onChanged: (String? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text('Male'),
                      leading: Radio(
                          value: 'male',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            setState(() {
                              _gender = value;
                            });
                          }),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text('Others'),
                      leading: Radio(
                          value: 'other',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            setState(() {
                              _gender = value;
                            });
                          }),
                    ),
                  ),
                ],
              ),
              if (_formSubmitted && validateGender() != null)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    validateGender()!,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              SizedBox(
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: number,
                    validator: validatePhonenumber,
                    decoration: const InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 350,
                child: TextFormField(
                  controller: email,
                  validator: validateEmail,
                  decoration: const InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 350,
                child: TextFormField(
                  obscureText: true, // to hide password
                  validator: validatePassword,

                  controller: passkey,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Password",
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 350,
                child: TextFormField(
                  obscureText: true,
                  controller: cpasskey,
                  validator: validateConfirmPassword,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder()),
                ),
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _isSelected,
                  title: const Text('Confirm submission'),
                  onChanged: (val) {
                    setState(() {
                      _isSelected = val!;
                    });
                  }),
              if (_formSubmitted && validateSubmission(_isSelected) != null)
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    validateSubmission(_isSelected)!,
                  ),
                ),
              Container(
                  color: Colors.red,
                  child: TextButton(
                      onPressed: () {
                        _submitForm();
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.black),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
