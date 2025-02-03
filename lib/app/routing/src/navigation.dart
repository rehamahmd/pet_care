import 'package:go_router/go_router.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class NavigateType {
  static const pushNamed = 'pushNamed';
  static const goNamed = 'goNamed';
}

class Navigation {
  static void to(
    BuildContext context,
    String screenName, {
    String navigationType = NavigateType.pushNamed,
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    try {
      switch (navigationType) {
        case NavigateType.pushNamed:
          _pushNamed(context, screenName, pathParameters: pathParameters);
          break;
        case NavigateType.goNamed:
          _goNamed(context, screenName, pathParameters: pathParameters);
          break;

        default:
          root(context);
      }
    } catch (e) {
      _goNamed(context, Routes.notFoundScreen);
    }
  }

  static _pushNamed(
    BuildContext context,
    String screenName, {
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    // context.pushNamed(screenName, pathParameters: pathParameters);
    GoRouter.of(context).pushNamed(screenName, pathParameters: pathParameters);
  }

  static _goNamed(
    BuildContext context,
    String screenName, {
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    context.goNamed(screenName, pathParameters: pathParameters);
  }

  static back(BuildContext context) {
    if (Navigator.canPop(context)) context.pop();
  }

  static root(BuildContext context) {
    while (Navigator.canPop(context)) {
      context.pop();
    }
  }
}
