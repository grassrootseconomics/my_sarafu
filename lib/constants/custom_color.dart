import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const customcolor1 = Color(0xFF000099);
const customcolor2 = Color(0xFF0BB79E);
const customcolor3 = Color(0xFF213656);
const customcolor4 = Color(0xFFF9F6F2);
const customcolor5 = Color(0xFF12F9E7);
const primaryColor = Color(0xFF474FCB);
const onboardHeadingColor = Color(0xFF032E9A);
const splashHeadingColor = Color(0xFF213656);
const onboardTextColor = Color(0xFF213656);

Color lightgreenshede = const Color(0xFFF0FAF6);
Color lightgreenshede1 = const Color(0xFFB2D9CC);
Color greenshede0 = const Color(0xFF66A690);
Color greenshede1 = const Color(0xFF93C9B5);
Color primarygreen = const Color(0xFF1E3A34);
Color grayshade = const Color(0xFF93B3AA);
Color colorAcent = const Color(0xFF78C2A7);
Color cyanColor = const Color(0xFF6D7E6E);

const kAnimationDuration = Duration(milliseconds: 200);

CustomColors lightCustomColors = const CustomColors(
  sourcecustomcolor1: Color(0xFF000099),
  customcolor1: Color(0xFF474FCB),
  oncustomcolor1: Color(0xFFFFFFFF),
  customcolor1Container: Color(0xFFE0E0FF),
  oncustomcolor1Container: Color(0xFF00006E),
  sourceCustomcolor2: Color(0xFF0BB79E),
  customcolor2: Color(0xFF006B5B),
  onCustomcolor2: Color(0xFFFFFFFF),
  customcolor2Container: Color(0xFF70F9DD),
  onCustomcolor2Container: Color(0xFF00201A),
  sourceCustomcolor3: Color(0xFF213656),
  customcolor3: Color(0xFF265EA7),
  onCustomcolor3: Color(0xFFFFFFFF),
  customcolor3Container: Color(0xFFD6E3FF),
  onCustomcolor3Container: Color(0xFF001B3C),
  sourceCustomcolor4: Color(0xFFF9F6F2),
  customcolor4: Color(0xFF4B6709),
  onCustomcolor4: Color(0xFFFFFFFF),
  customcolor4Container: Color(0xFFCCEF85),
  onCustomcolor4Container: Color(0xFF141F00),
  sourceCustomcolor5: Color(0xFF12F9E7),
  customcolor5: Color(0xFF006A62),
  onCustomcolor5: Color(0xFFFFFFFF),
  customcolor5Container: Color(0xFF20FDEB),
  onCustomcolor5Container: Color(0xFF00201D),
);

CustomColors darkCustomColors = const CustomColors(
  sourcecustomcolor1: Color(0xFF000099),
  customcolor1: Color(0xFFBFC2FF),
  oncustomcolor1: Color(0xFF0D129E),
  customcolor1Container: Color(0xFF2D34B3),
  oncustomcolor1Container: Color(0xFFE0E0FF),
  sourceCustomcolor2: Color(0xFF0BB79E),
  customcolor2: Color(0xFF4EDCC1),
  onCustomcolor2: Color(0xFF00382F),
  customcolor2Container: Color(0xFF005144),
  onCustomcolor2Container: Color(0xFF70F9DD),
  sourceCustomcolor3: Color(0xFF213656),
  customcolor3: Color(0xFFA8C8FF),
  onCustomcolor3: Color(0xFF003062),
  customcolor3Container: Color(0xFF00468A),
  onCustomcolor3Container: Color(0xFFD6E3FF),
  sourceCustomcolor4: Color(0xFFF9F6F2),
  customcolor4: Color(0xFFB1D26C),
  onCustomcolor4: Color(0xFF253600),
  customcolor4Container: Color(0xFF374E00),
  onCustomcolor4Container: Color(0xFFCCEF85),
  sourceCustomcolor5: Color(0xFF12F9E7),
  customcolor5: Color(0xFF00DECE),
  onCustomcolor5: Color(0xFF003732),
  customcolor5Container: Color(0xFF00504A),
  onCustomcolor5Container: Color(0xFF20FDEB),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourcecustomcolor1,
    required this.customcolor1,
    required this.oncustomcolor1,
    required this.customcolor1Container,
    required this.oncustomcolor1Container,
    required this.sourceCustomcolor2,
    required this.customcolor2,
    required this.onCustomcolor2,
    required this.customcolor2Container,
    required this.onCustomcolor2Container,
    required this.sourceCustomcolor3,
    required this.customcolor3,
    required this.onCustomcolor3,
    required this.customcolor3Container,
    required this.onCustomcolor3Container,
    required this.sourceCustomcolor4,
    required this.customcolor4,
    required this.onCustomcolor4,
    required this.customcolor4Container,
    required this.onCustomcolor4Container,
    required this.sourceCustomcolor5,
    required this.customcolor5,
    required this.onCustomcolor5,
    required this.customcolor5Container,
    required this.onCustomcolor5Container,
  });

  final Color? sourcecustomcolor1;
  final Color? customcolor1;
  final Color? oncustomcolor1;
  final Color? customcolor1Container;
  final Color? oncustomcolor1Container;
  final Color? sourceCustomcolor2;
  final Color? customcolor2;
  final Color? onCustomcolor2;
  final Color? customcolor2Container;
  final Color? onCustomcolor2Container;
  final Color? sourceCustomcolor3;
  final Color? customcolor3;
  final Color? onCustomcolor3;
  final Color? customcolor3Container;
  final Color? onCustomcolor3Container;
  final Color? sourceCustomcolor4;
  final Color? customcolor4;
  final Color? onCustomcolor4;
  final Color? customcolor4Container;
  final Color? onCustomcolor4Container;
  final Color? sourceCustomcolor5;
  final Color? customcolor5;
  final Color? onCustomcolor5;
  final Color? customcolor5Container;
  final Color? onCustomcolor5Container;

  @override
  CustomColors copyWith({
    Color? sourcecustomcolor1,
    Color? customcolor1,
    Color? oncustomcolor1,
    Color? customcolor1Container,
    Color? oncustomcolor1Container,
    Color? sourceCustomcolor2,
    Color? customcolor2,
    Color? onCustomcolor2,
    Color? customcolor2Container,
    Color? onCustomcolor2Container,
    Color? sourceCustomcolor3,
    Color? customcolor3,
    Color? onCustomcolor3,
    Color? customcolor3Container,
    Color? onCustomcolor3Container,
    Color? sourceCustomcolor4,
    Color? customcolor4,
    Color? onCustomcolor4,
    Color? customcolor4Container,
    Color? onCustomcolor4Container,
    Color? sourceCustomcolor5,
    Color? customcolor5,
    Color? onCustomcolor5,
    Color? customcolor5Container,
    Color? onCustomcolor5Container,
  }) {
    return CustomColors(
      sourcecustomcolor1: sourcecustomcolor1 ?? this.sourcecustomcolor1,
      customcolor1: customcolor1 ?? this.customcolor1,
      oncustomcolor1: oncustomcolor1 ?? this.oncustomcolor1,
      customcolor1Container: customcolor1Container ?? this.customcolor1Container,
      oncustomcolor1Container: oncustomcolor1Container ?? this.oncustomcolor1Container,
      sourceCustomcolor2: sourceCustomcolor2 ?? this.sourceCustomcolor2,
      customcolor2: customcolor2 ?? this.customcolor2,
      onCustomcolor2: onCustomcolor2 ?? this.onCustomcolor2,
      customcolor2Container: customcolor2Container ?? this.customcolor2Container,
      onCustomcolor2Container: onCustomcolor2Container ?? this.onCustomcolor2Container,
      sourceCustomcolor3: sourceCustomcolor3 ?? this.sourceCustomcolor3,
      customcolor3: customcolor3 ?? this.customcolor3,
      onCustomcolor3: onCustomcolor3 ?? this.onCustomcolor3,
      customcolor3Container: customcolor3Container ?? this.customcolor3Container,
      onCustomcolor3Container: onCustomcolor3Container ?? this.onCustomcolor3Container,
      sourceCustomcolor4: sourceCustomcolor4 ?? this.sourceCustomcolor4,
      customcolor4: customcolor4 ?? this.customcolor4,
      onCustomcolor4: onCustomcolor4 ?? this.onCustomcolor4,
      customcolor4Container: customcolor4Container ?? this.customcolor4Container,
      onCustomcolor4Container: onCustomcolor4Container ?? this.onCustomcolor4Container,
      sourceCustomcolor5: sourceCustomcolor5 ?? this.sourceCustomcolor5,
      customcolor5: customcolor5 ?? this.customcolor5,
      onCustomcolor5: onCustomcolor5 ?? this.onCustomcolor5,
      customcolor5Container: customcolor5Container ?? this.customcolor5Container,
      onCustomcolor5Container: onCustomcolor5Container ?? this.onCustomcolor5Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourcecustomcolor1: Color.lerp(sourcecustomcolor1, other.sourcecustomcolor1, t),
      customcolor1: Color.lerp(customcolor1, other.customcolor1, t),
      oncustomcolor1: Color.lerp(oncustomcolor1, other.oncustomcolor1, t),
      customcolor1Container: Color.lerp(customcolor1Container, other.customcolor1Container, t),
      oncustomcolor1Container: Color.lerp(oncustomcolor1Container, other.oncustomcolor1Container, t),
      sourceCustomcolor2: Color.lerp(sourceCustomcolor2, other.sourceCustomcolor2, t),
      customcolor2: Color.lerp(customcolor2, other.customcolor2, t),
      onCustomcolor2: Color.lerp(onCustomcolor2, other.onCustomcolor2, t),
      customcolor2Container: Color.lerp(customcolor2Container, other.customcolor2Container, t),
      onCustomcolor2Container: Color.lerp(onCustomcolor2Container, other.onCustomcolor2Container, t),
      sourceCustomcolor3: Color.lerp(sourceCustomcolor3, other.sourceCustomcolor3, t),
      customcolor3: Color.lerp(customcolor3, other.customcolor3, t),
      onCustomcolor3: Color.lerp(onCustomcolor3, other.onCustomcolor3, t),
      customcolor3Container: Color.lerp(customcolor3Container, other.customcolor3Container, t),
      onCustomcolor3Container: Color.lerp(onCustomcolor3Container, other.onCustomcolor3Container, t),
      sourceCustomcolor4: Color.lerp(sourceCustomcolor4, other.sourceCustomcolor4, t),
      customcolor4: Color.lerp(customcolor4, other.customcolor4, t),
      onCustomcolor4: Color.lerp(onCustomcolor4, other.onCustomcolor4, t),
      customcolor4Container: Color.lerp(customcolor4Container, other.customcolor4Container, t),
      onCustomcolor4Container: Color.lerp(onCustomcolor4Container, other.onCustomcolor4Container, t),
      sourceCustomcolor5: Color.lerp(sourceCustomcolor5, other.sourceCustomcolor5, t),
      customcolor5: Color.lerp(customcolor5, other.customcolor5, t),
      onCustomcolor5: Color.lerp(onCustomcolor5, other.onCustomcolor5, t),
      customcolor5Container: Color.lerp(customcolor5Container, other.customcolor5Container, t),
      onCustomcolor5Container: Color.lerp(onCustomcolor5Container, other.onCustomcolor5Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourcecustomcolor1]
  ///   * [CustomColors.customcolor1]
  ///   * [CustomColors.oncustomcolor1]
  ///   * [CustomColors.customcolor1Container]
  ///   * [CustomColors.oncustomcolor1Container]
  ///   * [CustomColors.sourceCustomcolor2]
  ///   * [CustomColors.customcolor2]
  ///   * [CustomColors.onCustomcolor2]
  ///   * [CustomColors.customcolor2Container]
  ///   * [CustomColors.onCustomcolor2Container]
  ///   * [CustomColors.sourceCustomcolor3]
  ///   * [CustomColors.customcolor3]
  ///   * [CustomColors.onCustomcolor3]
  ///   * [CustomColors.customcolor3Container]
  ///   * [CustomColors.onCustomcolor3Container]
  ///   * [CustomColors.sourceCustomcolor4]
  ///   * [CustomColors.customcolor4]
  ///   * [CustomColors.onCustomcolor4]
  ///   * [CustomColors.customcolor4Container]
  ///   * [CustomColors.onCustomcolor4Container]
  ///   * [CustomColors.sourceCustomcolor5]
  ///   * [CustomColors.customcolor5]
  ///   * [CustomColors.onCustomcolor5]
  ///   * [CustomColors.customcolor5Container]
  ///   * [CustomColors.onCustomcolor5Container]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourcecustomcolor1: sourcecustomcolor1!.harmonizeWith(dynamic.primary),
      customcolor1: customcolor1!.harmonizeWith(dynamic.primary),
      oncustomcolor1: oncustomcolor1!.harmonizeWith(dynamic.primary),
      customcolor1Container: customcolor1Container!.harmonizeWith(dynamic.primary),
      oncustomcolor1Container: oncustomcolor1Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor2: sourceCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2: customcolor2!.harmonizeWith(dynamic.primary),
      onCustomcolor2: onCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2Container: customcolor2Container!.harmonizeWith(dynamic.primary),
      onCustomcolor2Container: onCustomcolor2Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor3: sourceCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3: customcolor3!.harmonizeWith(dynamic.primary),
      onCustomcolor3: onCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3Container: customcolor3Container!.harmonizeWith(dynamic.primary),
      onCustomcolor3Container: onCustomcolor3Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor4: sourceCustomcolor4!.harmonizeWith(dynamic.primary),
      customcolor4: customcolor4!.harmonizeWith(dynamic.primary),
      onCustomcolor4: onCustomcolor4!.harmonizeWith(dynamic.primary),
      customcolor4Container: customcolor4Container!.harmonizeWith(dynamic.primary),
      onCustomcolor4Container: onCustomcolor4Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor5: sourceCustomcolor5!.harmonizeWith(dynamic.primary),
      customcolor5: customcolor5!.harmonizeWith(dynamic.primary),
      onCustomcolor5: onCustomcolor5!.harmonizeWith(dynamic.primary),
      customcolor5Container: customcolor5Container!.harmonizeWith(dynamic.primary),
      onCustomcolor5Container: onCustomcolor5Container!.harmonizeWith(dynamic.primary),
    );
  }
}
