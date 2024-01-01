import 'package:esim2/theme/theme_helper.dart';
import 'package:esim2/utils/size_utils.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterGray900 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargePoppinsGray900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargePoppinsGray900_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeRobotoBluegray10001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray40001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumInterGray90014 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray90015 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 9.fSize,
      );
  static get bodySmallGray9009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 9.fSize,
      );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Headline text style
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineMediumGray900_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
      );
  // Label text style
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsGray900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray900,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get labelMediumGray90011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get labelMediumPoppinsGray900 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallGray900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get labelSmallIndigoA400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigoA400,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterOnPrimarySemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsGray900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsGray900Bold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBluegray10001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumInterMedium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumInterOnPrimaryBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnPrimaryMedium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBluegray40001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray90001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray90001Medium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterIndigoA400 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.indigoA400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterOnPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
