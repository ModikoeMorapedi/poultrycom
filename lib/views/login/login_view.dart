import 'package:flutter/material.dart';
import 'package:poultrycom/utils/strings_util.dart';
import 'package:poultrycom/view_models/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFormFieldWidget(
              initialValue: StringUtils.enterEmail,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.enterPassword,
            ),
            const SizedBox(
              height: 200,
            ),
            ButtonWidget(
              text: StringUtils.login,
              minWidth: MediaQuery.of(context).size.height * 0.4,
              onPressed: () {
                loginViewModel.navigateToHome();
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
