// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteModelImpl _$$SiteModelImplFromJson(Map<String, dynamic> json) =>
    _$SiteModelImpl(
      sites: (json['sites'] as List<dynamic>?)
              ?.map((e) => SiteEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SiteModelImplToJson(_$SiteModelImpl instance) =>
    <String, dynamic>{
      'sites': instance.sites.map((e) => e.toJson()).toList(),
    };

_$SiteEntityImpl _$$SiteEntityImplFromJson(Map<String, dynamic> json) =>
    _$SiteEntityImpl(
      siteId: json['site_id'] as String?,
      siteDesc: json['site_desc'] as String?,
      siteAddress: json['site_address'] as String?,
      siteTel: json['site_tel'] as String?,
      location: json['location'] == null
          ? null
          : LocationData.fromJson(json['location'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble(),
      siteCloseTime: _$JsonConverterFromJson<String, DateTime>(
          json['site_close_time'], const CustomDateTimeConverter().fromJson),
      siteOpenTime: _$JsonConverterFromJson<String, DateTime>(
          json['site_open_time'], const CustomDateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$SiteEntityImplToJson(_$SiteEntityImpl instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'site_desc': instance.siteDesc,
      'site_address': instance.siteAddress,
      'site_tel': instance.siteTel,
      'location': instance.location?.toJson(),
      'distance': instance.distance,
      'site_close_time': _$JsonConverterToJson<String, DateTime>(
          instance.siteCloseTime, const CustomDateTimeConverter().toJson),
      'site_open_time': _$JsonConverterToJson<String, DateTime>(
          instance.siteOpenTime, const CustomDateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$LocationDataImpl _$$LocationDataImplFromJson(Map<String, dynamic> json) =>
    _$LocationDataImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$MyLocationDataImpl _$$MyLocationDataImplFromJson(Map<String, dynamic> json) =>
    _$MyLocationDataImpl(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MyLocationDataImplToJson(
        _$MyLocationDataImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
