import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';import 'package:raj_singh_s_application3/data/models/login/post_login_resp.dart';import 'package:raj_singh_s_application3/data/apiClient/api_client.dart';class LoginController extends GetxController {TextEditingController emailaddressController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

Rx<bool> isShowPassword = true.obs;

PostLoginResp postLoginResp = PostLoginResp();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailaddressController.dispose(); passwordController.dispose(); } 
Future<void> callCreateLogin(Map req) async  { try{
postLoginResp   =  await Get.find<ApiClient>().createLogin(headers: {'Content-Type': 'application/json',}, requestData: req, );
_handleCreateLoginSuccess();
} on PostLoginResp catch(e)
{
postLoginResp = e;
rethrow;
} } 
void _handleCreateLoginSuccess() { 

Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString()); } 
 }
