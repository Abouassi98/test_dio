// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../domain/main_response.dart';

// part 'main_response_dto.freezed.dart';
// part 'main_response_dto.g.dart';

// @freezed
// class MainResponseDto with _$MainResponseDto {
//   const factory MainResponseDto({
//     String? responseCode,
//     String? responseMessage,
//     String? responseStatus,
//   }) = _MainResponseDto;

//   const MainResponseDto._();
//   factory MainResponseDto.fromJson(Map<String, dynamic> json) => _$MainResponseDtoFromJson(json);

//   factory MainResponseDto.fromDomain(MainResponse mainResponse) {
//     return MainResponseDto(
//       responseCode: mainResponse.responseCode,
//       responseMessage: mainResponse.responseMessage,
//       responseStatus: mainResponse.responseStatus,
//     );
//   }

//   MainResponse toDomain() {
//     return MainResponse(
//       responseCode: responseCode,
//       responseMessage: responseMessage,
//       responseStatus: responseStatus,
//     );
//   }
// }
