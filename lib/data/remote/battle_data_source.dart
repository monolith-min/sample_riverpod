import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_riverpod2/data/model/battle_item.dart';
import 'package:sample_riverpod2/data/remote/app_dio.dart';

part 'battle_data_source.g.dart';

final battleDataSourceProvider = Provider((ref) => BattleDataSource(ref.read));

@RestApi()
abstract class BattleDataSource {

  factory BattleDataSource(Reader reader) => _BattleDataSource(reader(dioProvider));


  @GET("")
  Future<List<BattleItem>> getBattles({
    @Query("q") required String query,
  });

}
