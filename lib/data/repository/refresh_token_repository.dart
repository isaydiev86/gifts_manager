import 'package:gifts_manager/data/repository/base/reactive_repository.dart';
import 'package:gifts_manager/data/repository/refresh_token_provider.dart';
import 'package:gifts_manager/di/service_locator.dart';

class RefreshTokenRepository extends ReactiveRepository<String> {

  final RefreshTokenProvider _refreshTokenProvider;

  RefreshTokenRepository(this._refreshTokenProvider);

  @override
  String convertFromString(String rawItem) => rawItem;

  @override
  String convertToString(String item) => item;

  @override
  Future<String?> getRawData() => _refreshTokenProvider.getRefreshToken();

  @override
  Future<bool> saveRawData(String? item) => _refreshTokenProvider.setRefreshToken(item);
}

