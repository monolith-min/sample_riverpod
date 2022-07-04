import 'package:freezed_annotation/freezed_annotation.dart';

import 'battle_player.dart';


part 'battle_item.freezed.dart';
part 'battle_item.g.dart';

@freezed
abstract class BattleItem with _$BattleItem {
  factory BattleItem({
    String? battleName,
    int? batid,
    String? battleStatus,
    List<BattlePlayer>? playerList,
  }) = _BattleItem;

  factory BattleItem.fromJson(Map<String, dynamic> json) =>
      _$BattleItemFromJson(json);
}
