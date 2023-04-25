import 'package:flutter/material.dart';
import 'package:poultrycom/view_models/view_models.dart';
import 'package:provider/provider.dart';
import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterViewModel registerViewModel =
        Provider.of<RegisterViewModel>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFormFieldWidget(
              initialValue: StringUtils.enterUsername,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.enterEmail,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.enterPassword,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.confirmPassword,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              text: StringUtils.register,
              minWidth: MediaQuery.of(context).size.height * 0.4,
              onPressed: () {
                registerViewModel.navigateToLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
