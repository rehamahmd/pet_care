import 'package:flutter_starter_kit/app/imports.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../styles/text/text_style_imp.dart';

extension TextStyleExtensions on AppTextStyle {
  TextStyle? get primaryStyle {
    try {
      TextStyle selectedTextStyle = TextStyleImp.textStyleImp[this]!;
      return GoogleFonts.aBeeZee(textStyle: selectedTextStyle);
    } catch (e) {
      throw Exception("TextStyle Implementation for '$this' not exist.. ");
    }
  }

  TextStyle? get secondaryStyle {
    try {
      TextStyle selectedTextStyle = TextStyleImp.textStyleImp[this]!;
      return GoogleFonts.italiana(textStyle: selectedTextStyle);
    } catch (e) {
      throw Exception("Secondary Style:.. Cant get textStyle Imp");
    }
  }
}
