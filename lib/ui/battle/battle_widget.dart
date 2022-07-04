import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/data/model/battle_item.dart';
import 'package:sample_riverpod2/ui/battle/battle_status_widget.dart';

import '../component/avatar_widget.dart';

class BattleWidget extends HookConsumerWidget {
  const BattleWidget({
    Key? key,
    required this.battleItem
  }) : super(key: key);

  final BattleItem battleItem;



  Widget _battleTitleWidget() {
    return Container(
      height: 30,
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("개인전"),
            const SizedBox(
              width: 50,
              height: 1,
            ),
            Container(
              height: 10,
              width: 10,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  Widget _images(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Container(width: 29, height: 29, color: Colors.transparent),
        ...List.generate(
          battleItem.playerList!.length,
              (index) => Positioned(
            left: 15.0 * index,
            child: AvatarWidget(
              thumbPath: battleItem.playerList![index].imageUrl ??
                  "https://i.pinimg.com/originals/43/6d/a2/436da29db0fdade76e6455e4b71bf1db.jpg",
              size: 25,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _title() {
    return Text(battleItem.battleName ?? "오메기떡 걸고 한판?");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(

      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _battleTitleWidget(),
            BattleStatusWidget(status: battleItem.battleStatus),
            const SizedBox(
              height: 10,
            ),
            _images(context),
            const SizedBox(
              height: 10,
            ),
            _title(),

          ],
        ),
      ),
    );
  }
}
