import 'package:flutter_starter_kit/app/imports.dart';

class ErrorScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function? onRefresh;
  const ErrorScreen._({
    required this.title,
    this.subtitle = '',
    required this.image,
    this.onRefresh,
  });

  factory ErrorScreen.notFound({
    Function? onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Not Found',
      subtitle: '',
      image: AppIcons.generalError,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.serverError({
    Function? onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Server Error',
      subtitle: '',
      image: AppIcons.generalError,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.networkError({
    Function? onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Network Error',
      subtitle: '',
      image: AppIcons.generalError,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.generalError({
    String? title,
    Function? onRefresh,
  }) {
    return ErrorScreen._(
      title: title ?? 'Error Happend!',
      subtitle: '',
      image: AppIcons.generalError,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.notAuthorized({
    Function? onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Not Authorized!',
      subtitle: '',
      image: AppIcons.generalError,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.show(AppError error, [RefreshCallback? onRefresh]) {
    return switch (error) {
      NetworkError() => ErrorScreen.networkError(onRefresh: onRefresh),
      ServerError() => ErrorScreen.serverError(onRefresh: onRefresh),
      UnAuthorizedError() => ErrorScreen.notAuthorized(onRefresh: onRefresh),
      OperationError() => ErrorScreen.generalError(title: error.msg, onRefresh: onRefresh),
      _ => ErrorScreen.generalError(onRefresh: onRefresh)
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(props: MainAppBarProps(screenTitle: '')),
      body: AppErrorWidget(
        title: title,
        subtitle: subtitle,
        image: image,
        onRefresh: onRefresh,
      ),
    );
  }
}
