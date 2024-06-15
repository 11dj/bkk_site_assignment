// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiteModel _$SiteModelFromJson(Map<String, dynamic> json) {
  return _SiteModel.fromJson(json);
}

/// @nodoc
mixin _$SiteModel {
  List<SiteEntity> get sites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteModelCopyWith<SiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteModelCopyWith<$Res> {
  factory $SiteModelCopyWith(SiteModel value, $Res Function(SiteModel) then) =
      _$SiteModelCopyWithImpl<$Res, SiteModel>;
  @useResult
  $Res call({List<SiteEntity> sites});
}

/// @nodoc
class _$SiteModelCopyWithImpl<$Res, $Val extends SiteModel>
    implements $SiteModelCopyWith<$Res> {
  _$SiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_value.copyWith(
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<SiteEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteModelImplCopyWith<$Res>
    implements $SiteModelCopyWith<$Res> {
  factory _$$SiteModelImplCopyWith(
          _$SiteModelImpl value, $Res Function(_$SiteModelImpl) then) =
      __$$SiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SiteEntity> sites});
}

/// @nodoc
class __$$SiteModelImplCopyWithImpl<$Res>
    extends _$SiteModelCopyWithImpl<$Res, _$SiteModelImpl>
    implements _$$SiteModelImplCopyWith<$Res> {
  __$$SiteModelImplCopyWithImpl(
      _$SiteModelImpl _value, $Res Function(_$SiteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_$SiteModelImpl(
      sites: null == sites
          ? _value._sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<SiteEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SiteModelImpl implements _SiteModel {
  const _$SiteModelImpl({final List<SiteEntity> sites = const []})
      : _sites = sites;

  factory _$SiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteModelImplFromJson(json);

  final List<SiteEntity> _sites;
  @override
  @JsonKey()
  List<SiteEntity> get sites {
    if (_sites is EqualUnmodifiableListView) return _sites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sites);
  }

  @override
  String toString() {
    return 'SiteModel(sites: $sites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteModelImpl &&
            const DeepCollectionEquality().equals(other._sites, _sites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      __$$SiteModelImplCopyWithImpl<_$SiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteModelImplToJson(
      this,
    );
  }
}

abstract class _SiteModel implements SiteModel {
  const factory _SiteModel({final List<SiteEntity> sites}) = _$SiteModelImpl;

  factory _SiteModel.fromJson(Map<String, dynamic> json) =
      _$SiteModelImpl.fromJson;

  @override
  List<SiteEntity> get sites;
  @override
  @JsonKey(ignore: true)
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SiteEntity _$SiteEntityFromJson(Map<String, dynamic> json) {
  return _SiteEntity.fromJson(json);
}

/// @nodoc
mixin _$SiteEntity {
  String? get siteId => throw _privateConstructorUsedError;
  String? get siteDesc => throw _privateConstructorUsedError;
  String? get siteAddress => throw _privateConstructorUsedError;
  String? get siteTel => throw _privateConstructorUsedError;
  LocationData? get location => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime? get siteCloseTime => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime? get siteOpenTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteEntityCopyWith<SiteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteEntityCopyWith<$Res> {
  factory $SiteEntityCopyWith(
          SiteEntity value, $Res Function(SiteEntity) then) =
      _$SiteEntityCopyWithImpl<$Res, SiteEntity>;
  @useResult
  $Res call(
      {String? siteId,
      String? siteDesc,
      String? siteAddress,
      String? siteTel,
      LocationData? location,
      double? distance,
      @CustomDateTimeConverter() DateTime? siteCloseTime,
      @CustomDateTimeConverter() DateTime? siteOpenTime});

  $LocationDataCopyWith<$Res>? get location;
}

/// @nodoc
class _$SiteEntityCopyWithImpl<$Res, $Val extends SiteEntity>
    implements $SiteEntityCopyWith<$Res> {
  _$SiteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = freezed,
    Object? siteDesc = freezed,
    Object? siteAddress = freezed,
    Object? siteTel = freezed,
    Object? location = freezed,
    Object? distance = freezed,
    Object? siteCloseTime = freezed,
    Object? siteOpenTime = freezed,
  }) {
    return _then(_value.copyWith(
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteDesc: freezed == siteDesc
          ? _value.siteDesc
          : siteDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      siteTel: freezed == siteTel
          ? _value.siteTel
          : siteTel // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      siteCloseTime: freezed == siteCloseTime
          ? _value.siteCloseTime
          : siteCloseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      siteOpenTime: freezed == siteOpenTime
          ? _value.siteOpenTime
          : siteOpenTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDataCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteEntityImplCopyWith<$Res>
    implements $SiteEntityCopyWith<$Res> {
  factory _$$SiteEntityImplCopyWith(
          _$SiteEntityImpl value, $Res Function(_$SiteEntityImpl) then) =
      __$$SiteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? siteId,
      String? siteDesc,
      String? siteAddress,
      String? siteTel,
      LocationData? location,
      double? distance,
      @CustomDateTimeConverter() DateTime? siteCloseTime,
      @CustomDateTimeConverter() DateTime? siteOpenTime});

  @override
  $LocationDataCopyWith<$Res>? get location;
}

/// @nodoc
class __$$SiteEntityImplCopyWithImpl<$Res>
    extends _$SiteEntityCopyWithImpl<$Res, _$SiteEntityImpl>
    implements _$$SiteEntityImplCopyWith<$Res> {
  __$$SiteEntityImplCopyWithImpl(
      _$SiteEntityImpl _value, $Res Function(_$SiteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = freezed,
    Object? siteDesc = freezed,
    Object? siteAddress = freezed,
    Object? siteTel = freezed,
    Object? location = freezed,
    Object? distance = freezed,
    Object? siteCloseTime = freezed,
    Object? siteOpenTime = freezed,
  }) {
    return _then(_$SiteEntityImpl(
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteDesc: freezed == siteDesc
          ? _value.siteDesc
          : siteDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      siteTel: freezed == siteTel
          ? _value.siteTel
          : siteTel // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      siteCloseTime: freezed == siteCloseTime
          ? _value.siteCloseTime
          : siteCloseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      siteOpenTime: freezed == siteOpenTime
          ? _value.siteOpenTime
          : siteOpenTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SiteEntityImpl implements _SiteEntity {
  const _$SiteEntityImpl(
      {this.siteId,
      this.siteDesc,
      this.siteAddress,
      this.siteTel,
      this.location,
      this.distance,
      @CustomDateTimeConverter() this.siteCloseTime,
      @CustomDateTimeConverter() this.siteOpenTime});

  factory _$SiteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteEntityImplFromJson(json);

  @override
  final String? siteId;
  @override
  final String? siteDesc;
  @override
  final String? siteAddress;
  @override
  final String? siteTel;
  @override
  final LocationData? location;
  @override
  final double? distance;
  @override
  @CustomDateTimeConverter()
  final DateTime? siteCloseTime;
  @override
  @CustomDateTimeConverter()
  final DateTime? siteOpenTime;

  @override
  String toString() {
    return 'SiteEntity(siteId: $siteId, siteDesc: $siteDesc, siteAddress: $siteAddress, siteTel: $siteTel, location: $location, distance: $distance, siteCloseTime: $siteCloseTime, siteOpenTime: $siteOpenTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteEntityImpl &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.siteDesc, siteDesc) ||
                other.siteDesc == siteDesc) &&
            (identical(other.siteAddress, siteAddress) ||
                other.siteAddress == siteAddress) &&
            (identical(other.siteTel, siteTel) || other.siteTel == siteTel) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.siteCloseTime, siteCloseTime) ||
                other.siteCloseTime == siteCloseTime) &&
            (identical(other.siteOpenTime, siteOpenTime) ||
                other.siteOpenTime == siteOpenTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, siteId, siteDesc, siteAddress,
      siteTel, location, distance, siteCloseTime, siteOpenTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteEntityImplCopyWith<_$SiteEntityImpl> get copyWith =>
      __$$SiteEntityImplCopyWithImpl<_$SiteEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteEntityImplToJson(
      this,
    );
  }
}

abstract class _SiteEntity implements SiteEntity {
  const factory _SiteEntity(
          {final String? siteId,
          final String? siteDesc,
          final String? siteAddress,
          final String? siteTel,
          final LocationData? location,
          final double? distance,
          @CustomDateTimeConverter() final DateTime? siteCloseTime,
          @CustomDateTimeConverter() final DateTime? siteOpenTime}) =
      _$SiteEntityImpl;

  factory _SiteEntity.fromJson(Map<String, dynamic> json) =
      _$SiteEntityImpl.fromJson;

  @override
  String? get siteId;
  @override
  String? get siteDesc;
  @override
  String? get siteAddress;
  @override
  String? get siteTel;
  @override
  LocationData? get location;
  @override
  double? get distance;
  @override
  @CustomDateTimeConverter()
  DateTime? get siteCloseTime;
  @override
  @CustomDateTimeConverter()
  DateTime? get siteOpenTime;
  @override
  @JsonKey(ignore: true)
  _$$SiteEntityImplCopyWith<_$SiteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  String? get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call({String? type, List<double> coordinates});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDataImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationDataImplCopyWith(
          _$LocationDataImpl value, $Res Function(_$LocationDataImpl) then) =
      __$$LocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double> coordinates});
}

/// @nodoc
class __$$LocationDataImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationDataImpl>
    implements _$$LocationDataImplCopyWith<$Res> {
  __$$LocationDataImplCopyWithImpl(
      _$LocationDataImpl _value, $Res Function(_$LocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = null,
  }) {
    return _then(_$LocationDataImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$LocationDataImpl implements _LocationData {
  const _$LocationDataImpl(
      {this.type, final List<double> coordinates = const []})
      : _coordinates = coordinates;

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  @override
  final String? type;
  final List<double> _coordinates;
  @override
  @JsonKey()
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'LocationData(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      __$$LocationDataImplCopyWithImpl<_$LocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataImplToJson(
      this,
    );
  }
}

abstract class _LocationData implements LocationData {
  const factory _LocationData(
      {final String? type,
      final List<double> coordinates}) = _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  String? get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyLocationData _$MyLocationDataFromJson(Map<String, dynamic> json) {
  return _MyLocationData.fromJson(json);
}

/// @nodoc
mixin _$MyLocationData {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyLocationDataCopyWith<MyLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocationDataCopyWith<$Res> {
  factory $MyLocationDataCopyWith(
          MyLocationData value, $Res Function(MyLocationData) then) =
      _$MyLocationDataCopyWithImpl<$Res, MyLocationData>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$MyLocationDataCopyWithImpl<$Res, $Val extends MyLocationData>
    implements $MyLocationDataCopyWith<$Res> {
  _$MyLocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLocationDataImplCopyWith<$Res>
    implements $MyLocationDataCopyWith<$Res> {
  factory _$$MyLocationDataImplCopyWith(_$MyLocationDataImpl value,
          $Res Function(_$MyLocationDataImpl) then) =
      __$$MyLocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$MyLocationDataImplCopyWithImpl<$Res>
    extends _$MyLocationDataCopyWithImpl<$Res, _$MyLocationDataImpl>
    implements _$$MyLocationDataImplCopyWith<$Res> {
  __$$MyLocationDataImplCopyWithImpl(
      _$MyLocationDataImpl _value, $Res Function(_$MyLocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$MyLocationDataImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$MyLocationDataImpl implements _MyLocationData {
  const _$MyLocationDataImpl({this.lat = 0.0, this.lng = 0.0});

  factory _$MyLocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLocationDataImplFromJson(json);

  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;

  @override
  String toString() {
    return 'MyLocationData(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLocationDataImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLocationDataImplCopyWith<_$MyLocationDataImpl> get copyWith =>
      __$$MyLocationDataImplCopyWithImpl<_$MyLocationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyLocationDataImplToJson(
      this,
    );
  }
}

abstract class _MyLocationData implements MyLocationData {
  const factory _MyLocationData({final double lat, final double lng}) =
      _$MyLocationDataImpl;

  factory _MyLocationData.fromJson(Map<String, dynamic> json) =
      _$MyLocationDataImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$MyLocationDataImplCopyWith<_$MyLocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
