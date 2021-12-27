import 'package:ds_json/src/core/domain/serialisers/color_serialiser.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_model.g.dart';

@immutable
@JsonSerializable()
class Contact {
  final String name;
  final DateTime dateOfBirth;

  @ColorSerialiser()
  final Color favouriteColour;

  const Contact({
    @required this.name,
    @required this.dateOfBirth,
    @required this.favouriteColour,
  });

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);

  /// Below here is used for equality comparison
  ///
  /// See the freezed article for a good way to automate this
  /// https://developer.school/how-to-use-freezed-with-flutter/

  @override
  bool operator ==(Object other) =>
      other is Contact &&
      other.name == name &&
      other.dateOfBirth == dateOfBirth &&
      other.favouriteColour == favouriteColour;

  @override
  int get hashCode => hashValues(name, dateOfBirth, favouriteColour);
}
