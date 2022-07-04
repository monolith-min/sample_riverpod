// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BattlePlayer _$$_BattlePlayerFromJson(Map<String, dynamic> json) =>
    _$_BattlePlayer(
      teamCode: json['teamCode'] as int?,
      teamName: json['teamName'] as String?,
      wrbId: json['wrbId'] as int?,
      memberId: json['memberId'] as int?,
      playerType: json['playerType'] as String?,
      nickName: json['nickName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      batId: json['batId'] as int?,
      todayYn: json['todayYn'] as bool?,
      wearableTypeCd: json['wearableTypeCd'] as String?,
      ranking: json['ranking'] as int?,
      imageYn: json['imageYn'] as bool?,
      leaderYn: json['leaderYn'] as bool?,
      selfYn: json['selfYn'] as bool?,
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$$_BattlePlayerToJson(_$_BattlePlayer instance) =>
    <String, dynamic>{
      'teamCode': instance.teamCode,
      'teamName': instance.teamName,
      'wrbId': instance.wrbId,
      'memberId': instance.memberId,
      'playerType': instance.playerType,
      'nickName': instance.nickName,
      'imageUrl': instance.imageUrl,
      'batId': instance.batId,
      'todayYn': instance.todayYn,
      'wearableTypeCd': instance.wearableTypeCd,
      'ranking': instance.ranking,
      'imageYn': instance.imageYn,
      'leaderYn': instance.leaderYn,
      'selfYn': instance.selfYn,
      'enabled': instance.enabled,
    };
