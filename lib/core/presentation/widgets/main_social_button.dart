import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
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
        borderRadius: BorderRadius.circular(Sizes.radiusLg),
        boxShadow: const [BoxShadow(offset: Offset(0, 1), blurRadius: 8, color: Color.fromRGBO(0, 0, 0, 0.05))],
      ),
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Sizes.x16, horizontal: Sizes.x24),
            child: SvgPicture.asset(
              icon,
              width: Sizes.x24,
              height: Sizes.x24,
            ),
          ),
        ),
      ),
    );
  }
}
