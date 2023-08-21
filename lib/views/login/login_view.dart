import 'package:flutter/material.dart';
import 'package:poultrycom/utils/strings_util.dart';
import 'package:poultrycom/view_models/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../widgets/widgets.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _emailController =
      TextEditingController(text: "Enter email address");
  final TextEditingController _passwordController =
      TextEditingController(text: "Enter your password");
  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldWidget(
              textEditingController: _emailController,
            ),
            TextFormFieldWidget(
              textEditingController: _passwordController,
            ),
            const SizedBox(
              height: 200,
            ),
            ButtonWidget(
              text: StringUtils.login,
              minWidth: MediaQuery.of(context).size.height * 0.4,
              onPressed: () {
                loginViewModel.login(
                    _emailController.text, _passwordController.text);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              text: StringUtils.register,
              minWidth: MediaQuery.of(context).size.height * 0.4,
              onPressed: () {
                loginViewModel.navigateToRegister();
              },
            )
          ],
        ),
      ),
    );
  }
}
