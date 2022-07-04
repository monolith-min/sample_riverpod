import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/ui/component/loading_state_view_model.dart';

import 'loading.dart';

class ContainerWithLoading extends ConsumerWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final state = ref.watch(loadingStateProvider);

    return Stack(children: [
      child,
      state.isLoading ? const Loading() : const SizedBox(),
    ],);
  }
}
