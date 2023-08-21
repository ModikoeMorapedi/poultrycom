import 'package:flutter/material.dart';
import 'package:poultrycom/view_models/view_models.dart';
import 'package:provider/provider.dart';
import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final TextEditingController _emailController =
      TextEditingController(text: "Enter email address");
  final TextEditingController _passwordController =
      TextEditingController(text: "Enter your password");
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
            TextFormFieldWidget(
              textEditingController: _emailController,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.enterEmail,
            ),
            const TextFormFieldWidget(
              initialValue: StringUtils.enterPassword,
            ),
            TextFormFieldWidget(
              textEditingController: _passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              text: StringUtils.register,
              minWidth: MediaQuery.of(context).size.height * 0.4,
              onPressed: () {
                registerViewModel.register(
                    _emailController.text, _passwordController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
