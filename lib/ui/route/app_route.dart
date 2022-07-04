import 'package:auto_route/auto_route.dart';

import '../battle/battle_page.dart';

export 'app_route.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[

      AutoRoute(
        path: '/',
        page: BattlePage,
        initial: true,
      )
    ])
class $AppRouter {}
