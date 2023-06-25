import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainLayoutScreen extends HookWidget {
  final Widget child;

  const MainLayoutScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    final items = [
      (
        icon: Assets.icons.home.svg(width: Sizes.x28),
        activeIcon: Assets.icons.homeFilled.svg(width: Sizes.x28),
        label: tr(context).home,
        path: "/"
      ),
      (
        icon: Assets.icons.shop.svg(width: Sizes.x28),
        activeIcon: Assets.icons.shopFilled.svg(width: Sizes.x28),
        label: tr(context).shop,
        path: "/shop",
      ),
      (
        icon: Assets.icons.bag.svg(width: Sizes.x28),
        activeIcon: Assets.icons.bagFilled.svg(width: Sizes.x28),
        label: tr(context).cart,
        path: "/bag",
      ),
      (
        icon: Assets.icons.heart.svg(width: Sizes.x28),
        activeIcon: Assets.icons.heartFilled.svg(width: Sizes.x28),
        label: tr(context).favorites,
        path: "/favorites",
      ),
      (
        icon: Assets.icons.person.svg(width: Sizes.x28),
        activeIcon: Assets.icons.personFilled.svg(width: Sizes.x28),
        label: tr(context).profile,
        path: "/profile",
      ),
    ];

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Palette.primary,
        unselectedItemColor: Palette.grey,
        currentIndex: selectedIndex.value,
        selectedLabelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontSize: 12.sp, height: 1.5),
        type: BottomNavigationBarType.fixed,
        items: [
          ...items.map(
            (e) => BottomNavigationBarItem(label: e.label, icon: e.icon, activeIcon: e.activeIcon),
          )
        ],
        onTap: (i) {
          context.go(items[i].path);
          selectedIndex.value = i;
        },
      ),
    );
  }
}
