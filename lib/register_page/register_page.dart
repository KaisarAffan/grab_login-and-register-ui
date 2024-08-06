// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:grab_ui/register_page/page2.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _numberController = TextEditingController();
  bool _isButtonEnabled = false;
  @override
  void initState() {
    super.initState();
    _numberController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _numberController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(27, 30, 0, 20),
              child: Text(
                "Mobile",
                style: TextStyle(
                    color: Color.fromRGBO(98, 94, 94, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(27, 0, 18, 0),
                  width: 84,
                  child: IntlPhoneField(
                    initialCountryCode: 'ID',
                    disableLengthCheck: true,
                    showDropdownIcon: false,
                  ),
                ),
                Container(
                  child: SizedBox(
                    width: 272.0,
                    child: TextField(
                      controller: _numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '821 123 4567',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 191, 191, 191),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(text: 'Send me verification code through '),
                  TextSpan(
                      text: 'WhatsApp',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              width: 400.0,
              height: 60.0,
              margin: EdgeInsets.fromLTRB(40, 25, 40, 35),
              child: ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const page2()),
                        );
                      }
                    : null,
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Color.fromRGBO(179, 234, 196, 1),
                  disabledForegroundColor: Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: Color.fromARGB(255, 68, 174, 90),
                  foregroundColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
