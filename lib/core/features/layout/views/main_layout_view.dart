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
        (icon: const Icon(Icons.home), label: "Home", path: "/"),
        (icon: const Icon(Icons.shop), label: "Shop", path: "/shop"),
        (icon: const Icon(Icons.card_travel), label: "Bag", path: "/bag"),
        (icon: const Icon(Icons.favorite), label: "Favorites", path: "/favorites"),
        (icon: const Icon(Icons.person), label: "Profile", path: "/profile"),
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
