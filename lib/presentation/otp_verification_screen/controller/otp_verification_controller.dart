import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/otp_verification_screen/models/otp_verification_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class OtpVerificationController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<OtpVerificationModel> otpVerificationModelObj = OtpVerificationModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
