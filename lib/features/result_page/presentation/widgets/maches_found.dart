import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:threedpass/features/compare_page.dart/presentation/pages/compare_page.dart';
import 'package:threedpass/features/hashes_list/domain/entities/snapshot.dart';
import 'package:threedpass/features/hashes_list/presentation/bloc/hashes_list_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MatchesFound extends StatelessWidget {
  const MatchesFound({
    Key? key,
    required this.currentModel,
  }) : super(key: key);

  final Snapshot currentModel;

  Future<List<Snapshot>> getMatches(BuildContext context) async {
    final res = <Snapshot>{};
    final state =
        (BlocProvider.of<HashesListBloc>(context).state as HashesListLoaded);

    for (var hashModel in state.hashes) {
      if (hashModel != currentModel) {
        for (var hash in hashModel.hashes) {
          if (currentModel.hashes.contains(hash)) {
            res.add(hashModel);
          }
        }
      }
    }
    return res.toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getMatches(context),
      builder: (context, AsyncSnapshot<List<Snapshot>> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.isNotEmpty) {
            return _ClickableText(
              mainText: snapshot.data!.length.toString() + ' matches ',
              clickable: 'found',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComparePage(
                      origObj: currentModel,
                      comparisons: snapshot.data!,
                    ),
                  ),
                );
              },
            );
          } else {
            return _ClickableText(
              clickable: 'Why?',
              mainText: 'No mathes found ',
              onTap: () {
                launch(
                    'https://3dpass.org/features.html#3D_object_recognition');
              },
            );
          }
        } else {
          return Row(
            children: [
              JumpingDotsProgressIndicator(
                fontSize: 20.0,
              ),
            ],
          );
        }
      },
    );
  }
}

class _ClickableText extends StatelessWidget {
  const _ClickableText({
    required this.clickable,
    required this.mainText,
    required this.onTap,
  });

  final String clickable;
  final String mainText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(color: Colors.black);
    TextStyle linkStyle = const TextStyle(color: Colors.blue);

    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: mainText),
          TextSpan(
            text: clickable,
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
