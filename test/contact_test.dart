import 'package:ds_json/src/contacts/domain/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Serialisation", () {
    test('Contact is serialised to json', () async {
      final actual = Contact(
        name: "Paul",
        dateOfBirth: DateTime(2020, 1, 1),
        favouriteColour: Color(0xff9b59b6),
      ).toJson();

      final matcher = {
        "name": "Paul",
        "dateOfBirth": "2020-01-01T00:00:00.000",
        "favouriteColour": 4288371126
      };

      expect(actual, matcher);
    });

    test('Contact is serialised from json', () async {
      final Map<String, dynamic> json = {
        "name": "Paul",
        "dateOfBirth": "2020-01-01T00:00:00.000",
        "favouriteColour": 4288371126
      };

      final actual = Contact.fromJson(json);

      final matcher = Contact(
        name: "Paul",
        dateOfBirth: DateTime(2020, 1, 1),
        favouriteColour: Color(0xff9b59b6),
      );

      expect(actual, matcher);
    });
  });
}
