import 'package:flutter/material.dart';
import 'package:threedpass/core/theme/d3p_special_styles.dart';
import 'package:threedpass/core/widgets/text/d3p_basic_text.dart';

class D3pBodyMediumText extends StatelessWidget {
  final String text;
  final bool translate;

  const D3pBodyMediumText(
    this.text, {
    super.key,
    this.translate = true,
  });

  @override
  Widget build(final BuildContext context) {
    return D3pBasicText(
      text,
      style: Theme.of(context).customTextStyles.d3pBodyMedium,
      translate: translate,
    );
  }
}
