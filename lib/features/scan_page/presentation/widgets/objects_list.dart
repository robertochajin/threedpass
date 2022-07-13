import 'package:flutter/material.dart';
import 'package:threedpass/common/app_text_styles.dart';
import 'package:threedpass/features/hashes_list/presentation/bloc/hashes_list_bloc.dart';
import 'package:threedpass/features/scan_page/presentation/widgets/object_list/hash_card.dart';

class ObjectsList extends StatelessWidget {
  const ObjectsList({
    Key? key,
    required this.state,
  }) : super(key: key);

  final HashesListState state;

  @override
  Widget build(BuildContext context) {
    if (state is HashesListLoaded) {
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: (state as HashesListLoaded).objects.length,
        itemBuilder: (context, objIndex) {
          final currentObject = (state as HashesListLoaded).objects[objIndex];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                child: Text(
                  currentObject.name,
                  style: AppTextStyles.subtitle,
                ),
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 8,
                  left: 16,
                  right: 16,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: currentObject.snapshots.length,
                itemBuilder: (context, hashIndex) => SnapshotCard(
                  snapshot: currentObject.snapshots[hashIndex],
                  hashObject: currentObject,
                ),
              ),
            ],
          );
        },
      );
    }
    return const SizedBox();
  }
}
