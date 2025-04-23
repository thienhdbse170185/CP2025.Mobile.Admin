import 'package:smart_farm_admin/src/model/dto/medical_symptom/medical_symptom_dto.dart';
import 'package:smart_farm_admin/src/model/repository/medical_symptom/medical_symptom_api_client.dart';

class MedicalSymptomRepository {
  final MedicalSymptomApiClient apiClient;
  MedicalSymptomRepository({required this.apiClient});

  Future<MedicalSymptomDto> getMedicalSymptomById(String id) async {
    try {
      return await apiClient.getMedicalSymptomById(id);
    } catch (e) {
      rethrow;
    }
  }
}
