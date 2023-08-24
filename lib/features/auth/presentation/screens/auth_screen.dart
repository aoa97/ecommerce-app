import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_social_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_text_field.dart';
import 'package:ecommerce/features/home/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthScreen extends HookWidget {
  static const loginPath = "/auth";
  static const registerPath = "/register";

  final Auth authType;

  const AuthScreen({super.key, required this.authType});

  @override
  Widget build(BuildContext context) {
    final isLogin = authType == Auth.login;
    final visiblePassword = useState<bool>(false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Palette.background,
        toolbarHeight: .15.sh,
        title: Text(isLogin ? tr(context).login : tr(context).register, style: context.displayLargeText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16).h,
        child: Column(
          children: [
            if (!isLogin) ...[
              MainTextField(formControl: FormControl(), label: tr(context).name),
              8.verticalSpace,
            ],
            MainTextField(formControl: FormControl(), label: tr(context).email),
            8.verticalSpace,
            MainTextField(
              obsecure: !visiblePassword.value,
              formControl: FormControl(),
              label: tr(context).password,
              suffixIcon: IconButton(
                onPressed: () => visiblePassword.value = !visiblePassword.value,
                icon: Icon(visiblePassword.value ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            8.verticalSpace,
            if (isLogin)
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    tr(context).forgot_password,
                    style: context.headlineSmallText,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            24.verticalSpace,
            MainButton(
              onPressed: () {
                // TODO: Temp
                context.go(HomeScreen.path);
              },
              loading: false,
              label: isLogin ? tr(context).login : tr(context).register,
            ),
            24.verticalSpace,
            TextButton(
              onPressed: () {
                if (isLogin) {
                  context.pushReplacement(registerPath);
                } else {
                  context.pushReplacement(loginPath);
                }
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: isLogin ? tr(context).no_account : tr(context).already),
                    TextSpan(
                      text: isLogin ? tr(context).register : tr(context).login,
                      style: TextStyle(color: context.primaryColor),
                    ),
                  ],
                ),
                style: context.headlineSmallText,
                textAlign: TextAlign.end,
              ),
            ),
            const Spacer(),
            Text(
              isLogin ? tr(context).or_social_login : tr(context).or_social_register,
              style: context.headlineSmallText,
              textAlign: TextAlign.center,
            ),
            12.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainSocialButton(icon: Assets.icons.facebook.path, onPressed: () {}),
                16.horizontalSpace,
                MainSocialButton(icon: Assets.icons.google.path, onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
