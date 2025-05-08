import 'package:dio/dio.dart';
import 'package:kistpay_consumer_app/services/remote/api_client.dart';

class ApiService {
  late ApiClient _apiClient;

  ApiService() {
    var dio = Dio();
    _apiClient = ApiClient(dio);
  }

  // Future<BannerResponse> getAllBanners() async {
  //   final response = await _apiClient.getReq(
  //     '/miscellaneous/v1/banner/app/3',
  //     options: Options(
  //         headers: {'Authorization': "Bearer ${AppStrings.static_jwt}"}),
  //   );
  //   return BannerResponse.fromJson(response.data);
  // }
}
