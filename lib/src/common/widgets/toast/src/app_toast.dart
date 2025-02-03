import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class AppToastProps {
  final String? title;
  final String toastMsg;
  AppToastProps({this.title, required this.toastMsg});
}

class AppToast {
  AppToast._();
  static showSuccessToast(BuildContext context, AppToastProps props) async {
    showToastWidget(
      _ToastWidget.success(props: props),
      context: context,
      duration: const Duration(seconds: 4),
      animation: StyledToastAnimation.fadeScale,
      animDuration: const Duration(milliseconds: 600),
      textDirection: TextDirection.ltr,
    );
  }

  static showErrorToast(BuildContext context, AppToastProps props) async {
    showToastWidget(
      _ToastWidget.error(props: props),
      context: context,
      duration: const Duration(seconds: 4),
      animation: StyledToastAnimation.fade,
      animDuration: const Duration(milliseconds: 800),
      textDirection: TextDirection.ltr,
    );
  }
}

class _ToastWidget extends StatelessWidget {
  final AppToastProps props;
  final bool isSuccessToast;
  const _ToastWidget._({required this.props, this.isSuccessToast = false});
  factory _ToastWidget.error({required AppToastProps props}) {
    return _ToastWidget._(props: props, isSuccessToast: false);
  }
  factory _ToastWidget.success({required AppToastProps props}) {
    return _ToastWidget._(props: props, isSuccessToast: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 100.h),
      child: Center(
        child: Container(
          width: WidgetWidth.mainWidgetWidth,
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.h),
            border: Border.all(width: 1, color: AppColors.primaryColor.withOpacity(.6)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF4452C8).withOpacity(.3),
                offset: const Offset(0, 15),
                blurRadius: 7.3,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgIcon(
                props: SvgIconProps(
                  svgIcon: isSuccessToast ? AppIcons.successSvg : AppIcons.warningSvg,
                  height: 32.h,
                  matchTextDirection: false,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.primary(
                      text: 'Sorry',
                      appTextStyle: AppTextStyle.bold20Royal,
                    ),
                    AppSpace.vertical(5),
                    AppText.primary(
                      text: props.toastMsg,
                      appTextStyle: AppTextStyle.regular16Grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
