import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/ui/theme/app_theme.dart';

class Loading extends ConsumerWidget {
  const Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(theme.appColors.accent),
    );
  }
}
