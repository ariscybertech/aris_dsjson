// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    name: json['name'] as String,
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateTime.parse(json['dateOfBirth'] as String),
    favouriteColour:
        const ColorSerialiser().fromJson(json['favouriteColour'] as int),
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'favouriteColour':
          const ColorSerialiser().toJson(instance.favouriteColour),
    };
