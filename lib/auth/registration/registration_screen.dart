import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/utils/app_route_name.dart';
import 'package:todo_app/utils/assets.dart';
import 'package:todo_app/widgets/fill_button_widget.dart';
import 'package:todo_app/widgets/global_text_form_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              Assets.backgroundImage,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Text(
                'Welcome to Onboard!',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.3),
                child: Text(
                  'Let’s help to meet up your tasks.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        height: 1.6,
                      ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: const Column(
                  children: [
                    GlobalTextFormField(
                      hintText: 'Enter full name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GlobalTextFormField(
                      hintText: 'Enter your Email',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GlobalTextFormField(
                      hintText: 'Enter Password',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GlobalTextFormField(
                      hintText: 'Confirm Password',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              FillButtonWidget(
                text: 'Register',
                onPressed: () {
                  context.go(AppRouteName.dashboardScreen);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account ?',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(AppRouteName.loginScreen);
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
