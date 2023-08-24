import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/ui/screens/cart_screen.dart';
import 'package:ecommerce/features/favorites/presentation/ui/screens/favorites_screen.dart';
import 'package:ecommerce/features/home/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/features/profile/presentation/screens/profile_screen.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        icon: Assets.icons.home.svg(width: 28.h),
        activeIcon: Assets.icons.homeFilled.svg(width: 28.h),
        label: tr(context).home,
        path: HomeScreen.path
      ),
      // (
      //   icon: Assets.icons.shop.svg(width: 28.h),
      //   activeIcon: Assets.icons.shopFilled.svg(width: 28.h),
      //   label: tr(context).shop,
      //   path: ShopScreen.path,
      // ),
      (
        icon: Builder(builder: (context) {
          final count = context.select((CartCubit cart) => cart.count);

          return Badge(
            label: Text(count.toString()),
            isLabelVisible: count > 0,
            backgroundColor: Palette.primary,
            child: Assets.icons.bag.svg(width: 28.h),
          );
        }),
        activeIcon: Assets.icons.bagFilled.svg(width: 28.h),
        label: tr(context).cart,
        path: CartScreen.path,
      ),
      (
        icon: Assets.icons.heart.svg(width: 28.h),
        activeIcon: Assets.icons.heartFilled.svg(width: 28.h),
        label: tr(context).favorites,
        path: FavoritesScreen.path,
      ),
      (
        icon: Assets.icons.person.svg(width: 28.h),
        activeIcon: Assets.icons.personFilled.svg(width: 28.h),
        label: tr(context).profile,
        path: ProfileScreen.path,
      ),
    ];

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.white,
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
