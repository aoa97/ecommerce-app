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

    final destinations = useMemoized(
      () => [
        (icon: const Icon(Icons.home), label: tr(context).home, path: "/"),
        (icon: const Icon(Icons.shop), label: tr(context).shop, path: "/shop"),
        (icon: const Icon(Icons.card_travel), label: tr(context).cart, path: "/bag"),
        (icon: const Icon(Icons.favorite), label: tr(context).favorites, path: "/favorites"),
        (icon: const Icon(Icons.person), label: tr(context).profile, path: "/profile"),
      ],
      [],
    );

    return Scaffold(
      body: child,
      appBar: AppBar(title: const Text("TITLE")),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex.value,
        destinations: [...destinations.map((e) => NavigationDestination(label: e.label, icon: e.icon))],
        onDestinationSelected: (i) {
          context.go(destinations[i].path);
          selectedIndex.value = i;
        },
      ),
    );
  }
}
