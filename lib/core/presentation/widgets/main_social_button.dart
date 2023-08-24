import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainSocialButton extends StatelessWidget {
  final String icon;
  final void Function()? onPressed;
  const MainSocialButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(24).r,
        boxShadow: const [BoxShadow(offset: Offset(0, 1), blurRadius: 8, color: Color.fromRGBO(0, 0, 0, 0.05))],
      ),
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: SvgPicture.asset(icon, width: 24.h, height: 24.h),
          ),
        ),
      ),
    );
  }
}
