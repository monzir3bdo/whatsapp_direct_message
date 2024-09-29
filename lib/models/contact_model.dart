import 'package:hive/hive.dart';

part 'contact_model.g.dart';

@HiveType(typeId: 0)
class ContactModel {
  @HiveField(0)
  final String? name;
  @HiveField(2)
  final String phoneNumber;

  ContactModel({this.name, required this.phoneNumber});
}
