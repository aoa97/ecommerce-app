import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/colors.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class MainLayoutView extends HookWidget {
  final Widget child;

  const MainLayoutView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    final items = useMemoized(
      () => [
        (
          icon: Assets.icons.home.svg(width: 30),
          activeIcon: Assets.icons.homeFilled.svg(width: 30),
          label: tr(context).home,
          path: "/"
        ),
        (
          icon: Assets.icons.shop.svg(width: 30),
          activeIcon: Assets.icons.shopFilled.svg(width: 30),
          label: tr(context).shop,
          path: "/shop",
        ),
        (
          icon: Assets.icons.bag.svg(width: 30),
          activeIcon: Assets.icons.bagFilled.svg(width: 30),
          label: tr(context).cart,
          path: "/bag",
        ),
        (
          icon: Assets.icons.heart.svg(width: 30),
          activeIcon: Assets.icons.heartFilled.svg(width: 30),
          label: tr(context).favorites,
          path: "/favorites",
        ),
        (
          icon: Assets.icons.person.svg(width: 30),
          activeIcon: Assets.icons.personFilled.svg(width: 30),
          label: tr(context).profile,
          path: "/profile",
        ),
      ],
      [],
    );

    return Scaffold(
      body: child,
      appBar: AppBar(title: const Text("TITLE")),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Palette.primary,
        unselectedItemColor: Palette.grey,
        currentIndex: selectedIndex.value,
        selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(fontSize: 12, height: 1.5),
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
