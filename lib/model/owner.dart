import 'package:github_search/model/repository.dart';
import 'package:isar/isar.dart';
part 'owner.g.dart';

@collection
class Owner {
  Id? isarId;
  String? login;
  int? id;
  String? avatarUrl;
  String? type;

  @Backlink(to: 'owner')
  final repositoriey = IsarLinks<Repositoriey>();

  Owner({this.login, this.id, this.avatarUrl, this.type});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      login: json['login'] as String,
      id: json['id'] as int,
      avatarUrl: json['avatar_url'] as String,
      type: json['type'] as String,
    );
  }
}
