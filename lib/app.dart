import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/ui/route/app_route.gr.dart';
import 'package:sample_riverpod2/ui/theme/app_theme.dart';

class App extends HookConsumerWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);
    final appRouter = useMemoized(() => AppRouter());

    return MaterialApp.router(
      theme: theme.data,
        darkTheme: AppTheme.dark().data,
        themeMode: themeMode,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate());
  }
}
