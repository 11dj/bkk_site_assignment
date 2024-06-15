import 'package:bkk_drugstore_app/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_model.freezed.dart';
part 'site_model.g.dart';

@freezed
class SiteModel with _$SiteModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SiteModel({
    @Default([]) List<SiteEntity> sites,
  }) = _SiteModel;

  factory SiteModel.fromJson(Map<String, dynamic> json) => _$SiteModelFromJson(json);
}

@freezed
class SiteEntity with _$SiteEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SiteEntity({
    String? siteId,
    String? siteDesc,
    String? siteAddress,
    String? siteTel,
    LocationData? location,
    double? distance,
    @CustomDateTimeConverter() DateTime? siteCloseTime,
    @CustomDateTimeConverter() DateTime? siteOpenTime,
  }) = _SiteEntity;
  factory SiteEntity.fromJson(Map<String, dynamic> json) => _$SiteEntityFromJson(json);
}

@freezed
class LocationData with _$LocationData {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory LocationData({
    String? type,
    @Default([]) List<double> coordinates,
  }) = _LocationData;
  factory LocationData.fromJson(Map<String, dynamic> json) => _$LocationDataFromJson(json);
}

@freezed
class MyLocationData with _$MyLocationData {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory MyLocationData({
    @Default(0.0) double lat,
    @Default(0.0) double lng,
  }) = _MyLocationData;
  factory MyLocationData.fromJson(Map<String, dynamic> json) => _$MyLocationDataFromJson(json);
}
