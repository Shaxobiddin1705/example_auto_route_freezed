import 'package:auto_route/auto_route.dart';
import 'package:example_auto_route/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: UserRoute.page, initial: true),
        AutoRoute(page: SecondRoute.page),
        AutoRoute(page: MainRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(
            page: WrapperImagesR.page,
            children: [
              AutoRoute(page: ImagesRoute.page, initial: true),
              AutoRoute(page: DetailImageRoute.page),
            ],
          ),
          AutoRoute(page: InformationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
      ];
}
