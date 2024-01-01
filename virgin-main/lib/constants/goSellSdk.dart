import 'package:esim2/Models/destination_detail_model.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import 'package:go_sell_sdk_flutter/model/models.dart';

void startSDK(DataBundle bundle) async {
  try {
    GoSellSdkFlutter.sessionConfigurations(
      supportedPaymentMethods: [
        'VISA',
        'AMERICAN_EXPRESS',
        'APPLE_PAY',
        'BENEFIT',
        'BENEFITPAY',
        'CAREEMPAY',
        'FAWRY',
        'GOOGLE_PAY',
        'KNET',
        'MADA',
        'MASTERCARD',
        'MEEZA',
        'OMANNET',
        'PAYPAL',
        'POST_PAY',
        'NAPS',
        'STC_PAY',
        'TABBY'
      ],
      trxMode: TransactionMode.TOKENIZE_CARD,
      transactionCurrency: 'us',
      amount: bundle.price!.value!.toString(),
      // Configure the rest of your payment details...
      customer: Customer(
        customerId: '',
        email: 'test@test.com',
        isdNumber: '965',
        number: '00000000',
        firstName: 'test',
        middleName: 'test',
        lastName: 'test',
      ),
      // Add other configurations as per the documentation snippet...
      sdkMode: SDKMode.Sandbox, allowsToEditCardHolderName: true, shippings: [],
      postURL: '',
      taxes: [],
      paymentItems: [
        PaymentItem(
            amountPerUnit: 1,
            name: bundle.name!,
            quantity: Quantity(value: 3),
            totalAmount: bundle.price!.value!.round())
      ],
      paymentDescription: '',
      paymentReference: Reference(), paymentMetaData: {},
      paymentStatementDescriptor: '',
      isUserAllowedToSaveCard: false,
      isRequires3DSecure: false,
      receipt: Receipt(true, true),
      authorizeAction:
          AuthorizeAction(type: AuthorizeActionType.CAPTURE, timeInHours: 5),
      merchantID: '',
      allowedCadTypes: CardType.ALL,
      paymentType: PaymentType.ALL,
      allowsToSaveSameCardMoreThanOnce: true,
      cardHolderName: '',
    );
  } catch (e) {
    print('Error starting the SDK: $e');
  }
}
