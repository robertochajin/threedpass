import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:threedpass/common/app_text_styles.dart';
import 'package:threedpass/features/hashes_list/domain/entities/hash_object.dart';
import 'package:threedpass/features/hashes_list/domain/entities/snapshot.dart';
import 'package:threedpass/features/home_page/presentation/widgets/object_list/hash_card_popup_menu.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/settings_text.dart';
import 'package:threedpass/router/router.dart';

class HashCard extends StatelessWidget {
  HashCard({
    Key? key,
    required this.snapshot,
    required this.hashObject,
  }) : super(key: key);

  final DateFormat formatter = DateFormat('yyyy-MM-dd H:m:s');
  final Snapshot snapshot;
  final HashObject hashObject;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(
            PreviewWrapperRoute(
              hashObject: hashObject,
              snapshot: snapshot,
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'snap_card_name'.tr() + snapshot.name,
                    style: AppTextStyles.bodyText1,
                  ),
                  Text(
                    'snap_card_stamp'.tr() + formatter.format(snapshot.stamp),
                    style: AppTextStyles.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  snapshot.settingsConfig != null
                      ? Text.rich(snapshot.settingsConfig!.textSpan)
                      : const SizedBox(),
                ],
              ),
              const Spacer(),
              HashCardPopUpMenuButton(
                hashObject: hashObject,
                snapshot: snapshot,
              ),
            ],
          ),
        ),
      ),
    );
  }
}