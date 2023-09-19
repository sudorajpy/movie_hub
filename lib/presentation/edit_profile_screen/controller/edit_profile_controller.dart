import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';import 'package:raj_singh_s_application3/data/models/me/get_me_resp.dart';import 'package:raj_singh_s_application3/data/apiClient/api_client.dart';import 'package:fluttertoast/fluttertoast.dart';class EditProfileController extends GetxController {TextEditingController group7940Controller = TextEditingController();

TextEditingController group7942Controller = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController group7946Controller = TextEditingController();

TextEditingController dateController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

GetMeResp getMeResp = GetMeResp();

@override Future<void> onReady() async  { super.onReady();try {
await this.callFetchMe();_onFetchMeSuccess();} on GetMeResp {_onFetchMeError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
@override void onClose() { super.onClose(); group7940Controller.dispose(); group7942Controller.dispose(); emailController.dispose(); group7946Controller.dispose(); dateController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; editProfileModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); editProfileModelObj.value.dropdownItemList.refresh(); } 
Future<void> callFetchMe() async  { try{
getMeResp   =  await Get.find<ApiClient>().fetchMe(headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',});
_handleFetchMeSuccess();
} on GetMeResp catch(e)
{
getMeResp = e;
rethrow;
} } 
void _handleFetchMeSuccess() { 

group7942Controller.text = getMeResp.data!.username!.toString();emailController.text = getMeResp.data!.email!.toString();group7940Controller.text = getMeResp.data!.name!.toString(); } 
void _onFetchMeSuccess() {  } 
void _onFetchMeError() { 

Fluttertoast.showToast(msg: getMeResp.message!.toString(),); } 
 }
