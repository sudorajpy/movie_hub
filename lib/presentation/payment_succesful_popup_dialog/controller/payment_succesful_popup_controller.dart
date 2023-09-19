import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/payment_succesful_popup_dialog/models/payment_succesful_popup_model.dart';

class PaymentSuccesfulPopupController extends GetxController {
  Rx<PaymentSuccesfulPopupModel> paymentSuccesfulPopupModelObj =
      PaymentSuccesfulPopupModel().obs;

  Rx<bool> isCheckbox = false.obs;

  Rx<bool> isCheckbox1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
