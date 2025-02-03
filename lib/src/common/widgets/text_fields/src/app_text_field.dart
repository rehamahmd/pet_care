import 'package:flutter_starter_kit/app/imports.dart';

class AppTextFormField extends StatelessWidget {
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final Widget? suffixWidget;
  final String? prefixText;
  final bool obscureText;
  final String? label;
  final String? hint;
  final String? errorMessage;
  final String? initialValue;
  final TextAlign? textAlign;
  final double? width;
  final bool readOnly;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String?)? onChange;
  final Function()? onTap;
  final int? length;
  final TextInputAction? textInputAction;
  final VoidCallback? onAction;
  final String? counterText;
  final bool enabled;
  final TextStyle? labelStyle;
  final inputFormatters;
  final int maxLines;
  final double? height;
  final Function(String?)? onFieldSubmitted;
  final FocusNode? node;
  final Color? filledColor;
  const AppTextFormField({
    super.key,
    this.textInputType,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.suffixText,
    this.prefixText,
    this.obscureText = false,
    this.textAlign,
    this.label,
    this.hint,
    this.errorMessage,
    this.readOnly = false,
    this.length,
    this.onSaved,
    this.validator,
    this.onChange,
    this.onTap,
    this.initialValue,
    this.textInputAction,
    this.onAction,
    this.width,
    this.counterText,
    this.enabled = true,
    this.labelStyle,
    this.inputFormatters,
    this.maxLines = 1,
    this.height,
    this.onFieldSubmitted,
    this.filledColor,
    this.node,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 80.h,
      width: width,
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        enabled: enabled,
        onSaved: onSaved,
        obscuringCharacter: '*',
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChange,
        onTap: onTap,
        validator: validator,
        keyboardType: textInputType,
        readOnly: readOnly,
        controller: controller,
        obscureText: obscureText,
        maxLength: length,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: textInputType == TextInputType.multiline ? maxLines : 1,
        textInputAction: textInputType == TextInputType.multiline ? null : textInputAction ?? TextInputAction.next,
        onEditingComplete: onAction ?? () => FocusScope.of(context).nextFocus(),
        onFieldSubmitted: onFieldSubmitted == null ? null : (value) => onFieldSubmitted!(value),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: label,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffix: suffixWidget,
          labelStyle: labelStyle,
          suffixText: suffixText,
          prefixText: prefixText,
          counterText: '',
          errorMaxLines: 1,
          filled: true,
          fillColor: filledColor ?? Colors.white,
        ),
      ),
    );
  }
}
