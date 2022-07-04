import 'package:sample_riverpod2/data/model/battle_item.dart';

abstract class BattleRepository {
  Future<List<BattleItem>> getBattles();
}
