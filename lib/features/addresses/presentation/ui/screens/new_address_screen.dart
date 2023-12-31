import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_text_field.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:separated_column/separated_column.dart';

class NewAddressScreen extends StatelessWidget {
  static const relativePath = "create";
  static const path = "/addresses/create";

  const NewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, hasBackButton: true, title: Text(tr(context).add_shipping_address)),
      body: Padding(
        padding: const EdgeInsets.all(20).h,
        child: SeparatedColumn(
          separatorBuilder: (_, __) => 20.verticalSpace,
          children: [
            MainTextField(
              formControl: FormControl(),
              label: tr(context).full_name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).phone,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).address,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).governorate,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).district,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).nearest_land_mark,
            ),
            const Spacer(),
            MainButton(
              label: tr(context).save_address,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
