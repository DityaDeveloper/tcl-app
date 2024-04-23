import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import 'login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(10.0),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: ColorName.orangeGlow,
            )),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Assets.image.rsudImage.image(fit: BoxFit.fitWidth),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.text,
                    onSaved: (String? value) {},
                    onChanged: (value) => controller.username.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "email cannot be empty";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(),
                      hintText: 'masukan email kamu',
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  child: TextFormField(
                    controller: password,
                    obscureText: controller.isPasswordVisible.value,
                    keyboardType: TextInputType.text,
                    onChanged: (value) => password,
                    onSaved: (String? value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "password cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_rounded),
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isPasswordVisible.value
                              ? Icons.visibility_off_sharp
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          controller.hidepassword();
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, right: 20, left: 20, bottom: 40),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 6, 255, 89)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                          color: Color.fromARGB(255, 19, 201, 137))))),
                      onPressed: () async {
                        setState(() {
                          isloading = true;
                        });
                       
                        if (_formKey.currentState!.validate()) {
                          String emails = "hermanto.ditya@gmail.com";
                          String passwords = "123456";
                          // String emails = email.text;
                          // String passwords = password.text;
                        controller.onLogin(email:  emails, password: passwords);
                        }
                        setState(() {
                          isloading = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (isloading)
                                const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: ColorName.whiteprimary,
                                    ),
                                  ),
                                ),
                              Text(
                                  isloading
                                      ? "Mencoba masuk.."
                                      : "Masuk".toUpperCase(),
                                  style: const TextStyle(fontSize: 14))
                            ]),
                      )),
                ),
              ],
            ),
          ),
        )));
  }

  bool ischeckedValue = false;
}
