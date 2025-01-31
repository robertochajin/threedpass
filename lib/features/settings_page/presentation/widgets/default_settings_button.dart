import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:threedpass/core/theme/d3p_colors.dart';
import 'package:threedpass/core/theme/d3p_special_colors.dart';
import 'package:threedpass/core/theme/d3p_special_styles.dart';
import 'package:threedpass/core/utils/empty_function.dart';
import 'package:threedpass/core/widgets/text/d3p_body_medium_text.dart';

class DefaultSettingsButton extends StatelessWidget {
  // ignore: unused_element
  const DefaultSettingsButton._({
    required this.iconColor,
    required this.iconData,
    required this.text,
    required this.onPressed,
    required this.isBoolean,
    required this.onPressedBool,
    required this.textValue,
    required this.initialValue,
  });

  const DefaultSettingsButton.openButton({
    required this.iconColor,
    required this.iconData,
    required this.text,
    required this.onPressed,
    this.textValue,
    super.key,
  })  : isBoolean = false,
        initialValue = null,
        onPressedBool = emptyBoolFunction;

  const DefaultSettingsButton.boolean({
    required this.iconColor,
    required this.iconData,
    required this.text,
    required this.initialValue,
    required this.onPressedBool,
    super.key,
  })  : isBoolean = true,
        onPressed = emptyFunction,
        textValue = null;

  final IconData iconData;
  final Color iconColor;
  final String text;
  final String? textValue;
  final void Function() onPressed;
  final bool isBoolean;
  final bool? initialValue;
  final void Function(bool) onPressedBool;

  @override
  Widget build(final BuildContext context) {
    final child = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: _SettingsButtonContent(
        iconColor: iconColor,
        iconData: iconData,
        text: text,
        value: textValue,
        boolValue: initialValue,
        isBoolean: isBoolean,
        onPressedBool: onPressedBool,
      ),
    );

    final wrappedChild = isBoolean
        ? child
        : InkWell(
            onTap: () => onPressed(),
            child: child,
          );

    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return wrappedChild;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: wrappedChild,
        );
      // return _IOSSettingsIcon(iconColor: iconColor, iconData: iconData);
    }
  }
}

class _SettingsButtonContent extends StatelessWidget {
  const _SettingsButtonContent({
    required this.iconColor,
    required this.iconData,
    required this.text,
    // required this.onPressed,
    required this.value,
    required this.boolValue,
    required this.isBoolean,
    required this.onPressedBool,
  });

  final IconData iconData;
  final Color iconColor;
  final String text;
  final String? value;
  final bool isBoolean;
  final bool? boolValue;
  final void Function(bool) onPressedBool;
  // final void Function() onPressed;

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _SettingsIcon(iconColor: iconColor, iconData: iconData),
              const SizedBox(width: 16),
              D3pBodyMediumText(text),
            ],
          ),
          isBoolean
              ? _BoolSwitch(value: boolValue!, onChanged: onPressedBool)
              : Flexible(
                  child: _Value(value: value),
                ),
        ],
      ),
    );
  }
}

class _BoolSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;

  _BoolSwitch({
    required this.value,
    required this.onChanged,
  }) : switchValueNotifier = ValueNotifier<bool>(value);

  final ValueNotifier<bool> switchValueNotifier;

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: 16,
      child: ValueListenableBuilder(
        valueListenable: switchValueNotifier,
        builder: (final context, final hasError, final child) => PlatformSwitch(
          value: switchValueNotifier.value,
          onChanged: onChangedInner,
        ),
      ),
    );
  }

  void onChangedInner(final bool p0) {
    onChanged(p0);
    switchValueNotifier.value = p0;
  }
}

class _Value extends StatelessWidget {
  const _Value({
    required this.value,
  });
  final String? value;

  @override
  Widget build(final BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (value != null)
          Flexible(
            child: _ValueText(value: value),
          ),
        const _RightChevron(),
      ],
    );
  }
}

class _SettingsIcon extends StatelessWidget {
  const _SettingsIcon({
    required this.iconColor,
    required this.iconData,
  });

  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(final BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return _AndroidSettingsIcon(iconColor: iconColor, iconData: iconData);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return _IOSSettingsIcon(iconColor: iconColor, iconData: iconData);
    }
  }
}

class _AndroidSettingsIcon extends StatelessWidget {
  const _AndroidSettingsIcon({
    required this.iconColor,
    required this.iconData,
  });

  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(final BuildContext context) {
    return Icon(iconData, color: iconColor);
  }
}

class _IOSSettingsIcon extends StatelessWidget {
  const _IOSSettingsIcon({
    required this.iconColor,
    required this.iconData,
  });

  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(final BuildContext context) {
    return Container(
      child: Icon(iconData),
    );
  }
}

class _ValueText extends StatelessWidget {
  const _ValueText({
    required this.value,
  });

  final String? value;

  @override
  Widget build(final BuildContext context) {
    if (value != null) {
      final style = Theme.of(context).customTextStyles.d3pBodyMedium.copyWith(
            color: D3pColors.disabled,
          );
      return Padding(
        padding: const EdgeInsets.only(left: 16, right: 8),
        child: Text(
          value!,
          style: style,
          textAlign: TextAlign.end,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}

class _RightChevron extends StatelessWidget {
  const _RightChevron();

  @override
  Widget build(final BuildContext context) {
    final colors = Theme.of(context).customColors;
    final iconColor = colors.moreFadedGrey;
    return Icon(
      Icons.arrow_forward_ios_outlined,
      size: 16,
      color: iconColor,
    );
  }
}
