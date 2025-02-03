import 'package:dio/dio.dart';
import 'package:flutter_starter_kit/app/settings/logger.dart';
import 'package:flutter_starter_kit/src/common/data/network/endpoints.dart';
import 'package:flutter_starter_kit/src/common/data/network/network_helper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;
  late NetworkHelper networkHelper;

  setUp(() {
    mockDio = MockDio();
    networkHelper = NetworkHelper();
    networkHelper.dio = mockDio;
  });
  group('NetworkHelper Tests Call', () {
    const testPath = Endpoints.weather;
    final testResponse = Response(
      requestOptions: RequestOptions(path: testPath),
      data: {'message': 'success'},
      statusCode: 200,
    );

    test('GET Test', () async {
      when(() => mockDio.get(testPath)).thenAnswer((_) async => testResponse);
      final response = await networkHelper.get(testPath);
      Logger.info(response);
      expect(response.data, equals(testResponse.data));
      // Test the method called only once
      verify(() => mockDio.get(testPath, queryParameters: null)).called(1);
    });

    test('POST Method Tests', () async {
      const testBody = {'key': 'value'};
      when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => testResponse);
      final response = await networkHelper.post(testPath, body: testBody);
      expect(response.data, equals(testResponse.data));
      verify(() => mockDio.post(testPath, data: testBody, queryParameters: null)).called(1);
    });

    test('PATCH Method Tests', () async {
      const testBody = {'key': 'value'};
      when(() => mockDio.patch(
            any(),
            data: any(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => testResponse);

      final response = await networkHelper.patch(testPath, body: testBody);
      expect(response.data, equals(testResponse.data));
      verify(() => mockDio.patch(testPath, data: testBody, queryParameters: null)).called(1);
    });

    test(' DELETE Method Tests', () async {
      when(() => mockDio.delete(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => testResponse);

      final response = await networkHelper.delete(testPath);
      expect(response.data, equals(testResponse.data));
      verify(() => mockDio.delete(testPath, queryParameters: null)).called(1);
    });
  });
}
