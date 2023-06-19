import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_social_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_text_field.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthView extends HookWidget {
  final Auth authType;

  const AuthView({super.key, required this.authType});

  @override
  Widget build(BuildContext context) {
    final isLogin = authType == Auth.login;
    final visiblePassword = useState<bool>(false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(isLogin ? tr(context).login : tr(context).register),
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.paddingX16),
        child: Column(
          children: [
            if (!isLogin) ...[
              MainTextField(
                formControl: FormControl(),
                label: tr(context).name,
              ),
              Sizes.paddingX8.sph,
            ],
            MainTextField(
              formControl: FormControl(),
              label: tr(context).email,
            ),
            Sizes.paddingX8.sph,
            MainTextField(
              obsecure: !visiblePassword.value,
              formControl: FormControl(),
              label: tr(context).password,
              suffixIcon: IconButton(
                onPressed: () => visiblePassword.value = !visiblePassword.value,
                icon: Icon(visiblePassword.value ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            Sizes.paddingX8.sph,
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
            Sizes.paddingX24.sph,
            MainButton(
              onPressed: () {},
              loading: false,
              label: isLogin ? tr(context).login : tr(context).register,
            ),
            Sizes.paddingX24.sph,
            TextButton(
              onPressed: () {
                context.go(isLogin ? "/register" : "/auth");
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
            Sizes.paddingX12.sph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainSocialButton(
                  icon: Assets.icons.facebook.path,
                  onPressed: () {},
                ),
                Sizes.paddingX16.spw,
                MainSocialButton(
                  icon: Assets.icons.google.path,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
