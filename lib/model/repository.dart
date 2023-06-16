import 'package:isar/isar.dart';

import 'owner.dart';

part 'repository.g.dart';

@Collection(ignore: {'ownerModel'})
class Repositoriey {
  final Id isarId;
  final int id;
  final String name;
  final String fullName;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? pushedAt;
  final String gitUrl;
  final String sshUrl;
  final String cloneUrl;
  final String? homepage;
  final int size;
  final int watchersCount;
  final String? language;
  final int? forksCount;
  final List<String> topics;
  final int forks;
  final int openIssues;
  final int watchers;
  @ignore
  final Owner? ownerModel;

  final owner = IsarLink<Owner>();
  Repositoriey(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.description,
      required this.createdAt,
      required this.updatedAt,
      required this.pushedAt,
      required this.gitUrl,
      required this.sshUrl,
      required this.cloneUrl,
      required this.homepage,
      required this.size,
      required this.watchersCount,
      required this.language,
      required this.forksCount,
      required this.topics,
      required this.forks,
      required this.openIssues,
      required this.watchers,
      this.ownerModel})
      : isarId = Isar.autoIncrement;

  factory Repositoriey.fromJson(Map<String, dynamic> json) {
    return Repositoriey(
        id: json['id'] as int,
        name: json['name'] as String,
        fullName: json['full_name'] as String,
        description: json['description'] as String?,
        createdAt: json['created_at'] != null
            ? DateTime.parse(json['created_at'] as String)
            : null,
        updatedAt: json['updated_at'] != null
            ? DateTime.parse(json['updated_at'] as String)
            : null,
        pushedAt: json['pushed_at'] != null
            ? DateTime.parse(json['pushed_at'] as String)
            : null,
        gitUrl: json['git_url'] as String,
        sshUrl: json['ssh_url'] as String,
        cloneUrl: json['clone_url'] as String,
        homepage: json['homepage'] as String?,
        size: json['size'] as int,
        watchersCount: json['watchers_count'] as int,
        language: json['language'] as String?,
        forksCount: json['forks_count'] as int,
        topics: (json['topics'] as List).map((item) => item as String).toList(),
        forks: json['forks'] as int,
        openIssues: json['open_issues'] as int,
        watchers: json['watchers'] as int,
        ownerModel: Owner.fromJson(json['owner'] as Map<String, dynamic>));
  }
}
