import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_riverpod2/data/model/battle_item.dart';
import 'package:sample_riverpod2/data/remote/battle_data_source.dart';
import 'package:sample_riverpod2/data/repository/battle_repository.dart';

final battleRepositoryProvider =
    Provider((ref) => BattleRepositoryImpl(ref.read));

class BattleRepositoryImpl implements BattleRepository {
  BattleRepositoryImpl(this._reader);

  final Reader _reader;

  late final BattleDataSource _dataSource = _reader(battleDataSourceProvider);

  @override
  Future<List<BattleItem>> getBattles() async{
    print("!!!!!1");

    final String response =
    await rootBundle.loadString('assets/json/battle.json');
    // final data = await json.decode(response,BattleResponseModel);
    List<dynamic> userMap = jsonDecode(response);
    List<BattleItem> battleList2 = [];

    userMap.forEach((element) {
      Map<String, dynamic> a = element;
      BattleItem dd = BattleItem.fromJson(a);
      battleList2.add(dd);
    });


    return battleList2;
    // return await _dataSource.getBattles(query: "query");
  }
}
