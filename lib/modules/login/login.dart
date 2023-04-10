import 'package:flutter/material.dart';
import 'package:hash/shared/components/components.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController activationCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.grey,
                      fontSize: 30),
                ),
                const Text(
                  " قم بتسجيل الدخول للشراء بالجملة ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.grey,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultFormField(
                  icon: Icons.person,
                  label: 'name',
                  controller: name,
                  inputType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                defaultFormField(
                  icon: Icons.lock,
                  label: 'password',
                  controller: password,
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultFormField(
                  icon: Icons.security,
                  label: 'activation code',
                  controller: activationCode,
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(function: (){}, text: "text"),
                const SizedBox(height: 15),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      " ليس لديك مفتاح تفعيل؟",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    defaultTextButton(
                        controller: activationCode,
                        function: () {},
                        text: " الحصول على كود التفعيل")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
