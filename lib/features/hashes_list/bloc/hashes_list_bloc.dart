import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:threedpass/features/hashes_list/domain/entities/hash_object.dart';
import 'package:threedpass/features/hashes_list/domain/entities/objects_directory.dart';
import 'package:threedpass/features/hashes_list/domain/entities/snapshot.dart';
import 'package:threedpass/features/hashes_list/domain/repositories/hashes_repository.dart';
import 'package:threedpass/setup.dart';

part 'hashes_list_event.dart';
part 'hashes_list_state.dart';

class HashesListBloc extends Bloc<HashesListEvent, HashesListState> {
  HashesListBloc({
    required this.hashesRepository,
    required this.objectsDirectory,
  }) : super(HashesListInitial()) {
    on<DeleteHash>(_deleteHash);
    on<DeleteObject>(_deleteObject);
    on<AddObject>(_addObject);
    on<SaveSnapshot>(_saveSnapshot);
    on<ReplaceSnapshot>(_replaceSnapshot);
    on<_LoadHashesList>(_loadList);
  }

  final HashesRepository hashesRepository;
  final ObjectsDirectory objectsDirectory;

  Future<void> init() async {
    final objects = hashesRepository.getAll();
    add(_LoadHashesList(objects: objects));
  }

  Future<void> _loadList(
    final _LoadHashesList event,
    final Emitter<HashesListState> emit,
  ) async {
    emit(HashesListLoaded(objects: event.objects));
  }

  Future<void> _deleteHash(
    final DeleteHash event,
    final Emitter<HashesListState> emit,
  ) async {
    if (state is HashesListLoaded) {
      final list = (state as HashesListLoaded).objects;
      bool f = false;
      for (final obj in list) {
        if (obj == event.object) {
          // get snapshot to remove
          final snapshotToRemove = obj.snapshots.firstWhere(
            (final snap) => snap == event.hash,
          );

          final shouldDeleteFile =
              obj.isObjectFileCanBeDeletedWithSnapshot(snapshotToRemove);

          if (shouldDeleteFile) {
            File(snapshotToRemove.realPath).deleteSync();
          }

          obj.snapshots.remove(snapshotToRemove);

          // if only one snapshot, delete whole object
          if (obj.snapshots.isEmpty) {
            add(DeleteObject(object: obj));
            return;
          }

          f = true;
          break;
        }
      }

      if (!f) {
        getIt<Logger>().e(
          'Not found an object with id=${event.object} name=${event.object.name}',
        );
      } else {
        await hashesRepository.replaceObject(event.object);
      }
      emit(HashesListLoaded(objects: list));
    }
  }

  Future<void> _deleteObject(
    final DeleteObject event,
    final Emitter<HashesListState> emit,
  ) async {
    await hashesRepository.deleteObject(event.object);

    if (state is HashesListLoaded) {
      final list = (state as HashesListLoaded).objects;
      list.removeWhere(
        (final element) => element == event.object,
      );
      emit(HashesListLoaded(objects: list));
    }
  }

  Future<void> _addObject(
    final AddObject event,
    final Emitter<HashesListState> emit,
  ) async {
    await hashesRepository.addObject(event.object);

    if (state is HashesListLoaded) {
      final list = (state as HashesListLoaded).objects;
      list.add(event.object);
      emit(HashesListLoaded(objects: list));
    }
  }

  Future<void> _saveSnapshot(
    final SaveSnapshot event,
    final Emitter<HashesListState> emit,
  ) async {
    if (state is HashesListLoaded) {
      final list = (state as HashesListLoaded).objects;
      bool f = false;
      for (final obj in list) {
        if (obj == event.object) {
          obj.snapshots.add(event.hash);
          f = true;
          break;
        }
      }
      if (!f) {
        getIt<Logger>().e(
          'Not found an object with name=${event.object.name}',
        );
      } else {
        await hashesRepository.replaceObject(event.object);
      }
      emit(HashesListLoaded(objects: list));
    }
  }

  Future<void> _replaceSnapshot(
    final ReplaceSnapshot event,
    final Emitter<HashesListState> emit,
  ) async {
    if (state is HashesListLoaded) {
      final list = (state as HashesListLoaded).objects;
      bool f = false;
      for (final obj in list) {
        // find object
        if (obj == event.object) {
          // find old snapshot place
          final oldSnapIndex = obj.snapshots.indexOf(event.oldSnapshot);
          // replace it with new one
          if (oldSnapIndex != -1) {
            obj.snapshots[oldSnapIndex] = event.newSnapshot;
            f = true;
          } else {
            getIt<Logger>().e(
              'Not found a snapshot in object ${obj.name}. Old snapshot name=${event.oldSnapshot.name}',
            );
          }
          break;
        }
      }
      if (!f) {
        getIt<Logger>().e(
          'Not found an object with name=${event.object.name}',
        );
      } else {
        await hashesRepository.replaceObject(event.object);
      }
      emit(HashesListLoaded(objects: list));
    }
  }
}
