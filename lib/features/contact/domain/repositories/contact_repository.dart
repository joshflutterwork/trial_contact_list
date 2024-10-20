import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_model.dart';
import 'package:trial_contact_list/utils/model_extensions.dart';

abstract class ContactRepository {
  Future<List<ContactModel>> getContactList();
}

class DefaultContactRepository implements ContactRepository {
  @override
  Future<List<ContactModel>> getContactList() async {
    final String jsonText =
        await rootBundle.loadString('assets/jsons/data.json');

    final List<dynamic> jsonList = json.decode(jsonText);
    final List<ContactModel> contactModelList =
        jsonList.toListJsonOf(ContactModel.fromJson).normalizeAsList();

    return contactModelList;
  }
}
