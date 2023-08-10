import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_text_field.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:separated_column/separated_column.dart';

class NewAddresScreen extends StatelessWidget {
  const NewAddresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, hasBackButton: true, title: const Text("Adding Shipping Address")),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: SeparatedColumn(
          separatorBuilder: (_, __) => 20.sph,
          children: [
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            MainTextField(
              formControl: FormControl(),
              label: tr(context).name,
            ),
            const Spacer(),
            MainButton(
              label: "Save Address",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
