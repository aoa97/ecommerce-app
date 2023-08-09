import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummarySection extends StatelessWidget {
  final List<Widget> tiles;
  final String submitLabel;
  final void Function()? onSubmit;

  const SummarySection({super.key, required this.tiles, required this.submitLabel, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        listTileTheme: ListTileThemeData(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -3.h),
          titleTextStyle: context.labelMediumText,
          leadingAndTrailingTextStyle: context.headlineSmallText!.copyWith(fontSize: 16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...tiles,
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 8.w, 16.w, 20.w),
            child: MainButton(
              label: submitLabel,
              onPressed: onSubmit,
            ),
          )
        ],
      ),
    );
  }
}
