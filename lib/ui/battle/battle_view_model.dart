import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/data/model/battle_item.dart';
import 'package:sample_riverpod2/data/repository/battle_repository.dart';
import 'package:sample_riverpod2/data/repository/battle_repository_impl.dart';
import 'package:flutter/services.dart' show rootBundle;

final battleViewModelProvider =
    ChangeNotifierProvider((ref) => BattleViewModel(ref.read));

class BattleViewModel extends ChangeNotifier {
  BattleViewModel(this._reader);

  final Reader _reader;

  late final BattleRepository _repository = _reader(battleRepositoryProvider);

  List<BattleItem>? _battleItem;

  List<BattleItem>? get battleItem => _battleItem;

  Future<void> fetchBattles() {
    // void fetchBattles() async {

    return _repository
        .getBattles()
        .then((value) => _battleItem = value)
        .whenComplete(notifyListeners);
  }
}
