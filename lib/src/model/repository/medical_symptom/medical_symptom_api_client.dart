import 'package:dio/dio.dart';
import 'package:smart_farm_admin/src/model/dto/medical_symptom/medical_symptom_dto.dart';

class MedicalSymptomApiClient {
  final Dio dio;
  MedicalSymptomApiClient({required this.dio});

  Future<MedicalSymptomDto> getMedicalSymptomById(String id) async {
    try {
      final response = await dio.get('/medicalsymptom/$id');
      if (response.statusCode == 200) {
        return MedicalSymptomDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load medical symptom');
      }
    } catch (e) {
      rethrow;
    }
  }
}
