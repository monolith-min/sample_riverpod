// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BattleItem _$$_BattleItemFromJson(Map<String, dynamic> json) =>
    _$_BattleItem(
      battleName: json['battleName'] as String?,
      batid: json['batid'] as int?,
      battleStatus: json['battleStatus'] as String?,
      playerList: (json['playerList'] as List<dynamic>?)
          ?.map((e) => BattlePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BattleItemToJson(_$_BattleItem instance) =>
    <String, dynamic>{
      'battleName': instance.battleName,
      'batid': instance.batid,
      'battleStatus': instance.battleStatus,
      'playerList': instance.playerList,
    };
