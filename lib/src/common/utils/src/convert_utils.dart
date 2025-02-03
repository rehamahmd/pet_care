import '../../exceptions/exceptions.dart';

class ConvertUtils {
  ConvertUtils._();
  static Map<String, dynamic> convertToJson(response) {
    return Map<String, dynamic>.from(response);
  }

  static List<Map<String, dynamic>> convertToListJson(response) {
    try {
      return List<Map<String, dynamic>>.from(response);
    } on Exception catch (e) {
      throw UnSupportedJsonFormat(e.toString());
    }
  }

  static List<T> convertToListModel<T>(List<dynamic> data, T Function(Map<String, dynamic>) fromJson) {
    try {
      return data.map((item) => fromJson(item as Map<String, dynamic>)).toList();
    } on Exception catch (e) {
      throw UnSupportedJsonFormat(e.toString());
    }
  }
}
