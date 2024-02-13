import 'package:flutter/material.dart';
import 'package:registration/configs/constants.dart';
import 'package:registration/view/custombutton.dart';
import 'package:registration/view/customtext.dart';
import 'package:registration/view/customtextfield.dart';

void main() {
  runApp(const Registration());
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstnameController = TextEditingController();
    TextEditingController secondnameController = TextEditingController();
    TextEditingController phonenumberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmpasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration page."),
        foregroundColor: appBlackColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/"),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customtitleText(
                  label: "Welcome to the Registration page",
                  labelColor: appBlackColor,
                  labelFontSize: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const customtitleText(label: "First name."),
            customTextField(
              userFieldController: firstnameController,
              hint: "FIrst name.",
            ),
            const customtitleText(label: "Second name."),
            customTextField(
              userFieldController: secondnameController,
              hint: "Second name.",
            ),
            const customtitleText(label: "Phone number."),
            customTextField(
              userFieldController: phonenumberController,
              hint: "Phone number",
            ),
            const customtitleText(label: "E-mail."),
            customTextField(
              userFieldController: emailController,
              hint: "E-mail",
            ),
            const customtitleText(label: "Password"),
            customTextField(
                userFieldController: passwordController,
                icon: Icons.lock,
                hidetext: true,
                isPassword: true,
                hint: "Password"),
            const customtitleText(label: "Password"),
            customTextField(
              userFieldController: passwordController,
              icon: Icons.lock,
              hidetext: true,
              isPassword: true,
              hint: "Confirm password",
            ),
            const SizedBox(
              height: 30,
            ),
            customButton(
              buttoncolor: appgreenColor,
              buttonlabel: "Register",
              passwordController: passwordController,
              confirmpasswordController: confirmpasswordController,
            )
          ],
        ),
      )),
    );
  }
}
