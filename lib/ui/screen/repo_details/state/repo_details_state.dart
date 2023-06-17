import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/model/repository.dart';

part 'repo_details_state.freezed.dart';

@freezed
class RepoDetailsState with _$RepoDetailsState{
  const factory RepoDetailsState.initilize() = _Initilize;
  const factory RepoDetailsState.data(Repositoriey items) = _Data;
  const factory RepoDetailsState.loading() = _Loading;
  const factory RepoDetailsState.error(Object? e, [StackTrace? stk]) = _Error;
}
