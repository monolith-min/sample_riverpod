import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/ui/battle/battle_view_model.dart';
import 'package:sample_riverpod2/ui/battle/battle_widget.dart';
import 'package:sample_riverpod2/ui/component/loading_state_view_model.dart';
import 'package:sample_riverpod2/ui/theme/app_theme.dart';

import '../component/loading/container_with_loading.dart';

class BattlePage extends HookConsumerWidget {
  const BattlePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final battleViewModel = ref.read(battleViewModelProvider);
    final battles =
        ref.watch(battleViewModelProvider.select((value) => value.battleItem));

    final snapshot = useFuture(
      useMemoized(() {
        return ref
            .read(loadingStateProvider)
            .whileLoading(battleViewModel.fetchBattles);
      }, [battles]),
    );

    return Scaffold(
        appBar: AppBar(),
        body: ContainerWithLoading(
          child: battles == null
              ? const SizedBox()
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: battles!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BattleWidget(battleItem: battles[index]);
                  },
                ),
        )
        // GridView.builder(
        //   gridDelegate:
        //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   itemCount: battles!.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return BattleWidget(
        //       battleItem: battles[index],
        //     );
        //   },
        // ),
        );
  }
}
