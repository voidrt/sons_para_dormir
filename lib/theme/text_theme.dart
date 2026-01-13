import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class PetTrackTextStyle {
  static final subtitleText = GoogleFonts.getFont(
    'Gowun Dodum',
    fontSize: TextSizes.subtitle,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );

  static final bodyText = GoogleFonts.getFont(
    'Gowun Dodum',
    fontSize: TextSizes.bodyTextSize,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static final headlineText = GoogleFonts.getFont(
    'Gowun Dodum',
    fontSize: TextSizes.headlineTextSize,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
}

class TextSizes {
  static const double subtitle = 14;
  static const double bodyTextSize = 16;
  static const double headlineTextSize = 24;
}
