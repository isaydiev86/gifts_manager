
import 'package:gifts_manager/data/repository/base/reactive_repository.dart';
import 'package:gifts_manager/data/storage/shared_preference_data.dart';
import 'package:gifts_manager/di/service_locator.dart';

class TokenRepository extends ReactiveRepository<String> {

  final SharedPreferenceData _spData;

  TokenRepository(this._spData);

  @override
  String convertFromString(String rawItem) => rawItem;

  @override
  String convertToString(String item) => item;

  @override
  Future<String?> getRawData() => _spData.getToken();

  @override
  Future<bool> saveRawData(String? item) => _spData.setToken(item);
}
