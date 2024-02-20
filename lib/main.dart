import 'package:flutter/material.dart';
import 'package:registration/configs/constants.dart';
import 'package:registration/view/custombutton.dart';
import 'package:registration/view/customtext.dart';
import 'package:registration/view/customtextfield.dart';

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
        backgroundColor: titleColor,
        automaticallyImplyLeading: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("background.jpg"), fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/registration logo.png"),
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
                const customtitleText(
                  label: "First name.",
                ),
                customTextField(
                  userFieldController: firstnameController,
                  icon: Icons.person,
                  hint: "First name.",
                ),
                const customtitleText(label: "Second name."),
                customTextField(
                  userFieldController: secondnameController,
                  icon: Icons.person,
                  hint: "Second name.",
                ),
                const customtitleText(label: "Phone number."),
                customTextField(
                  userFieldController: phonenumberController,
                  icon: Icons.phone,
                  hint: "Phone number",
                ),
                const customtitleText(label: "E-mail."),
                customTextField(
                  userFieldController: emailController,
                  icon: Icons.language,
                  hint: "E-mail",
                ),
                const customtitleText(label: "Password"),
                customTextField(
                    userFieldController: passwordController,
                    icon: Icons.lock,
                    hidetext: true,
                    isPassword: true,
                    hint: "Password"),
                const customtitleText(label: "Re-enter Password"),
                customTextField(
                  userFieldController: confirmpasswordController,
                  icon: Icons.lock,
                  hidetext: true,
                  isPassword: true,
                  hint: "Confirm password",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customButton(
                      buttoncolor: titleColor,
                      buttonlabel: "Register",
                      confirmpasswordController: confirmpasswordController,
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
