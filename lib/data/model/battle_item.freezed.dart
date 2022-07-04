// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battle_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BattleItem _$BattleItemFromJson(Map<String, dynamic> json) {
  return _BattleItem.fromJson(json);
}

/// @nodoc
class _$BattleItemTearOff {
  const _$BattleItemTearOff();

  _BattleItem call(
      {String? battleName,
      int? batid,
      String? battleStatus,
      List<BattlePlayer>? playerList}) {
    return _BattleItem(
      battleName: battleName,
      batid: batid,
      battleStatus: battleStatus,
      playerList: playerList,
    );
  }

  BattleItem fromJson(Map<String, Object?> json) {
    return BattleItem.fromJson(json);
  }
}

/// @nodoc
const $BattleItem = _$BattleItemTearOff();

/// @nodoc
mixin _$BattleItem {
  String? get battleName => throw _privateConstructorUsedError;
  int? get batid => throw _privateConstructorUsedError;
  String? get battleStatus => throw _privateConstructorUsedError;
  List<BattlePlayer>? get playerList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleItemCopyWith<BattleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleItemCopyWith<$Res> {
  factory $BattleItemCopyWith(
          BattleItem value, $Res Function(BattleItem) then) =
      _$BattleItemCopyWithImpl<$Res>;
  $Res call(
      {String? battleName,
      int? batid,
      String? battleStatus,
      List<BattlePlayer>? playerList});
}

/// @nodoc
class _$BattleItemCopyWithImpl<$Res> implements $BattleItemCopyWith<$Res> {
  _$BattleItemCopyWithImpl(this._value, this._then);

  final BattleItem _value;
  // ignore: unused_field
  final $Res Function(BattleItem) _then;

  @override
  $Res call({
    Object? battleName = freezed,
    Object? batid = freezed,
    Object? battleStatus = freezed,
    Object? playerList = freezed,
  }) {
    return _then(_value.copyWith(
      battleName: battleName == freezed
          ? _value.battleName
          : battleName // ignore: cast_nullable_to_non_nullable
              as String?,
      batid: batid == freezed
          ? _value.batid
          : batid // ignore: cast_nullable_to_non_nullable
              as int?,
      battleStatus: battleStatus == freezed
          ? _value.battleStatus
          : battleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      playerList: playerList == freezed
          ? _value.playerList
          : playerList // ignore: cast_nullable_to_non_nullable
              as List<BattlePlayer>?,
    ));
  }
}

/// @nodoc
abstract class _$BattleItemCopyWith<$Res> implements $BattleItemCopyWith<$Res> {
  factory _$BattleItemCopyWith(
          _BattleItem value, $Res Function(_BattleItem) then) =
      __$BattleItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? battleName,
      int? batid,
      String? battleStatus,
      List<BattlePlayer>? playerList});
}

/// @nodoc
class __$BattleItemCopyWithImpl<$Res> extends _$BattleItemCopyWithImpl<$Res>
    implements _$BattleItemCopyWith<$Res> {
  __$BattleItemCopyWithImpl(
      _BattleItem _value, $Res Function(_BattleItem) _then)
      : super(_value, (v) => _then(v as _BattleItem));

  @override
  _BattleItem get _value => super._value as _BattleItem;

  @override
  $Res call({
    Object? battleName = freezed,
    Object? batid = freezed,
    Object? battleStatus = freezed,
    Object? playerList = freezed,
  }) {
    return _then(_BattleItem(
      battleName: battleName == freezed
          ? _value.battleName
          : battleName // ignore: cast_nullable_to_non_nullable
              as String?,
      batid: batid == freezed
          ? _value.batid
          : batid // ignore: cast_nullable_to_non_nullable
              as int?,
      battleStatus: battleStatus == freezed
          ? _value.battleStatus
          : battleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      playerList: playerList == freezed
          ? _value.playerList
          : playerList // ignore: cast_nullable_to_non_nullable
              as List<BattlePlayer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BattleItem implements _BattleItem {
  _$_BattleItem(
      {this.battleName, this.batid, this.battleStatus, this.playerList});

  factory _$_BattleItem.fromJson(Map<String, dynamic> json) =>
      _$$_BattleItemFromJson(json);

  @override
  final String? battleName;
  @override
  final int? batid;
  @override
  final String? battleStatus;
  @override
  final List<BattlePlayer>? playerList;

  @override
  String toString() {
    return 'BattleItem(battleName: $battleName, batid: $batid, battleStatus: $battleStatus, playerList: $playerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BattleItem &&
            (identical(other.battleName, battleName) ||
                other.battleName == battleName) &&
            (identical(other.batid, batid) || other.batid == batid) &&
            (identical(other.battleStatus, battleStatus) ||
                other.battleStatus == battleStatus) &&
            const DeepCollectionEquality()
                .equals(other.playerList, playerList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, battleName, batid, battleStatus,
      const DeepCollectionEquality().hash(playerList));

  @JsonKey(ignore: true)
  @override
  _$BattleItemCopyWith<_BattleItem> get copyWith =>
      __$BattleItemCopyWithImpl<_BattleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleItemToJson(this);
  }
}

abstract class _BattleItem implements BattleItem {
  factory _BattleItem(
      {String? battleName,
      int? batid,
      String? battleStatus,
      List<BattlePlayer>? playerList}) = _$_BattleItem;

  factory _BattleItem.fromJson(Map<String, dynamic> json) =
      _$_BattleItem.fromJson;

  @override
  String? get battleName;
  @override
  int? get batid;
  @override
  String? get battleStatus;
  @override
  List<BattlePlayer>? get playerList;
  @override
  @JsonKey(ignore: true)
  _$BattleItemCopyWith<_BattleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
