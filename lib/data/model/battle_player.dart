import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_player.freezed.dart';

part 'battle_player.g.dart';

@freezed
abstract class BattlePlayer with _$BattlePlayer {
  factory BattlePlayer({
    int? teamCode,
    String? teamName,
    int? wrbId,
    int? memberId,
    String? playerType,
    String? nickName,
    String? imageUrl,
    int? batId,
    bool? todayYn,
    String? wearableTypeCd,
    int? ranking,
    bool? imageYn,
    bool? leaderYn,
    bool? selfYn,
    bool? enabled,
  }) = _BattlePlayer;

  factory BattlePlayer.fromJson(Map<String, dynamic> json) => _$BattlePlayerFromJson(json);

}
