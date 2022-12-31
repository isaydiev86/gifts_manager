import 'dart:convert';

import 'package:gifts_manager/data/http/model/user_dto.dart';
import 'package:gifts_manager/data/repository/base/reactive_repository.dart';
import 'package:gifts_manager/data/storage/shared_preference_data.dart';

class UserRepository extends ReactiveRepository<UserDto> {

  final SharedPreferenceData _spData;

  UserRepository(this._spData);

  @override
  UserDto convertFromString(String rawItem) =>
      UserDto.fromJson(json.decode(rawItem));

  @override
  String convertToString(UserDto item) => json.encode(item);

  @override
  Future<String?> getRawData() => _spData.getUser();

  @override
  Future<bool> saveRawData(String? item) => _spData.setUser(item);
}
