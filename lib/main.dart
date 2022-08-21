import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final otpController = TextEditingController();

  void sendOTP() async {}

  void validateOTP() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Email Authentication'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: const OutlineInputBorder(),
                  suffixIcon: TextButton(
                    onPressed: () => sendOTP(),
                    child: const Text('Send OTP'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: otpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'OTP',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                validateOTP();
                emailController.clear();
                otpController.clear();
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
