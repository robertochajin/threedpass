// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppSettingsCWProxy {
  AppSettings darkTheme(bool darkTheme);

  AppSettings pinCode(String pinCode);

  AppSettings showZeroAssets(bool showZeroAssets);

  AppSettings stableRequirement(int stableRequirement);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppSettings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppSettings(...).copyWith(id: 12, name: "My name")
  /// ````
  AppSettings call({
    bool? darkTheme,
    String? pinCode,
    bool? showZeroAssets,
    int? stableRequirement,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppSettings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppSettings.copyWith.fieldName(...)`
class _$AppSettingsCWProxyImpl implements _$AppSettingsCWProxy {
  final AppSettings _value;

  const _$AppSettingsCWProxyImpl(this._value);

  @override
  AppSettings darkTheme(bool darkTheme) => this(darkTheme: darkTheme);

  @override
  AppSettings pinCode(String pinCode) => this(pinCode: pinCode);

  @override
  AppSettings showZeroAssets(bool showZeroAssets) =>
      this(showZeroAssets: showZeroAssets);

  @override
  AppSettings stableRequirement(int stableRequirement) =>
      this(stableRequirement: stableRequirement);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppSettings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppSettings(...).copyWith(id: 12, name: "My name")
  /// ````
  AppSettings call({
    Object? darkTheme = const $CopyWithPlaceholder(),
    Object? pinCode = const $CopyWithPlaceholder(),
    Object? showZeroAssets = const $CopyWithPlaceholder(),
    Object? stableRequirement = const $CopyWithPlaceholder(),
  }) {
    return AppSettings(
      darkTheme: darkTheme == const $CopyWithPlaceholder() || darkTheme == null
          ? _value.darkTheme
          // ignore: cast_nullable_to_non_nullable
          : darkTheme as bool,
      pinCode: pinCode == const $CopyWithPlaceholder() || pinCode == null
          ? _value.pinCode
          // ignore: cast_nullable_to_non_nullable
          : pinCode as String,
      showZeroAssets: showZeroAssets == const $CopyWithPlaceholder() ||
              showZeroAssets == null
          ? _value.showZeroAssets
          // ignore: cast_nullable_to_non_nullable
          : showZeroAssets as bool,
      stableRequirement: stableRequirement == const $CopyWithPlaceholder() ||
              stableRequirement == null
          ? _value.stableRequirement
          // ignore: cast_nullable_to_non_nullable
          : stableRequirement as int,
    );
  }
}

extension $AppSettingsCopyWith on AppSettings {
  /// Returns a callable class that can be used as follows: `instanceOfAppSettings.copyWith(...)` or like so:`instanceOfAppSettings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppSettingsCWProxy get copyWith => _$AppSettingsCWProxyImpl(this);
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  @override
  final int typeId = 7;

  @override
  AppSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettings(
      darkTheme: fields[1] as bool,
      stableRequirement: fields[0] as int,
      showZeroAssets: fields[2] == null ? false : fields[2] as bool,
      pinCode: fields[3] == null ? '' : fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.stableRequirement)
      ..writeByte(1)
      ..write(obj.darkTheme)
      ..writeByte(2)
      ..write(obj.showZeroAssets)
      ..writeByte(3)
      ..write(obj.pinCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
