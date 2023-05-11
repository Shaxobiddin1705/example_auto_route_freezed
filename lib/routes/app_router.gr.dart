// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:example_auto_route/pages/bottom_navigation_bar/home/home_page.dart'
    as _i6;
import 'package:example_auto_route/pages/bottom_navigation_bar/images/detail_image_page.dart'
    as _i8;
import 'package:example_auto_route/pages/bottom_navigation_bar/images/images_page.dart'
    as _i7;
import 'package:example_auto_route/pages/bottom_navigation_bar/information/information_page.dart'
    as _i4;
import 'package:example_auto_route/pages/bottom_navigation_bar/main_page.dart'
    as _i1;
import 'package:example_auto_route/pages/bottom_navigation_bar/profile/profile_page.dart'
    as _i5;
import 'package:example_auto_route/pages/home/user_page.dart' as _i3;
import 'package:example_auto_route/pages/second_page/second_page.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SecondPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserPage(),
      );
    },
    InformationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InformationPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ImagesRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ImagesPage(),
      );
    },
    WrapperImagesR.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: const _i8.WrapperImages()),
      );
    },
    DetailImageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailImageRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.DetailImagePage(
          key: args.key,
          image: args.image,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i9.PageRouteInfo<void> {
  const SecondRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserPage]
class UserRoute extends _i9.PageRouteInfo<void> {
  const UserRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InformationPage]
class InformationRoute extends _i9.PageRouteInfo<void> {
  const InformationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ImagesPage]
class ImagesRoute extends _i9.PageRouteInfo<void> {
  const ImagesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ImagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ImagesRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WrapperImages]
class WrapperImagesR extends _i9.PageRouteInfo<void> {
  const WrapperImagesR({List<_i9.PageRouteInfo>? children})
      : super(
          WrapperImagesR.name,
          initialChildren: children,
        );

  static const String name = 'WrapperImagesR';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.DetailImagePage]
class DetailImageRoute extends _i9.PageRouteInfo<DetailImageRouteArgs> {
  DetailImageRoute({
    _i10.Key? key,
    required String image,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailImageRoute.name,
          args: DetailImageRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailImageRoute';

  static const _i9.PageInfo<DetailImageRouteArgs> page =
      _i9.PageInfo<DetailImageRouteArgs>(name);
}

class DetailImageRouteArgs {
  const DetailImageRouteArgs({
    this.key,
    required this.image,
  });

  final _i10.Key? key;

  final String image;

  @override
  String toString() {
    return 'DetailImageRouteArgs{key: $key, image: $image}';
  }
}
