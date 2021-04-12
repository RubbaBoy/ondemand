import 'base.dart';

/// Url: https://ondemand.rit.edu/api/sites/1312
/// Method: GET
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  Request({Map<String, String> headers = const {}}) : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : super(headers);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.displayOptions
/// ```
class DisplayOptions {
  // response.response.displayOptions#allowCartEdit
  final String allowCartEdit;
  // response.response.displayOptions#check-type
  final String checkType;
  // response.response.displayOptions#discountStateTitle
  final String discountStateTitle;
  // response.response.displayOptions#LOYALTY/uiNoTendersAvailableMsg
  final String lOYALTYUiNoTendersAvailableMsg;
  // response.response.displayOptions#isSmsEnabled
  final String isSmsEnabled;
  // response.response.displayOptions#name-capture/lastInitialOnly
  final String nameCaptureLastInitialOnly;
  // response.response.displayOptions#currency/currencyCultureName
  final String currencyCurrencyCultureName;
  // response.response.displayOptions#isMobileNumberRequired
  final String isMobileNumberRequired;
  // response.response.displayOptions#hideSKULookup
  final String hideSKULookup;
  // response.response.displayOptions#isConceptLevelIgposConfigEnabled
  final String isConceptLevelIgposConfigEnabled;
  // response.response.displayOptions#isProfileValid
  final String isProfileValid;
  // response.response.displayOptions#voidReasonId
  final String voidReasonId;
  // response.response.displayOptions#currency/currencyCode
  final String currencyCurrencyCode;
  // response.response.displayOptions#onDemandIgVerificationCodeId
  final String onDemandIgVerificationCodeId;
  // response.response.displayOptions#useIgOrderApi
  final String useIgOrderApi;
  // response.response.displayOptions#roomCharge/paymentIds
  final String roomChargePaymentIds;
  // response.response.displayOptions#isTimeZoneValidationEnabled
  final String isTimeZoneValidationEnabled;
  // response.response.displayOptions#LOYALTY/bannedPlayerMessage
  final String lOYALTYBannedPlayerMessage;
  // response.response.displayOptions#LOYALTY/pinNumberLength
  final String lOYALTYPinNumberLength;
  // response.response.displayOptions#currency/currencySymbol
  final String currencyCurrencySymbol;
  // response.response.displayOptions#gaPaymentName
  final String gaPaymentName;
  // response.response.displayOptions#onDemandTenderId
  final String onDemandTenderId;
  // response.response.displayOptions#itemScanningDisabled
  final String itemScanningDisabled;
  // response.response.displayOptions#name-capture/isOptional
  final String nameCaptureIsOptional;
  // response.response.displayOptions#onDemandEmployeeId
  final String onDemandEmployeeId;
  // response.response.displayOptions#profit-center-id
  final String profitCenterId;
  // response.response.displayOptions#LOYALTY/uiSystemBrandingLabel
  final String lOYALTYUiSystemBrandingLabel;
  // response.response.displayOptions#name-capture/nameCaptureInstruction
  final String nameCaptureNameCaptureInstruction;
  // response.response.displayOptions#currency/currencyDecimalDigits
  final String currencyCurrencyDecimalDigits;
  // response.response.displayOptions#LOYALTY/restrictBannedPlayers
  final String lOYALTYRestrictBannedPlayers;
  // response.response.displayOptions#onDemandTerminalId
  final String onDemandTerminalId;

  DisplayOptions(
      {this.allowCartEdit,
      this.checkType,
      this.discountStateTitle,
      this.lOYALTYUiNoTendersAvailableMsg,
      this.isSmsEnabled,
      this.nameCaptureLastInitialOnly,
      this.currencyCurrencyCultureName,
      this.isMobileNumberRequired,
      this.hideSKULookup,
      this.isConceptLevelIgposConfigEnabled,
      this.isProfileValid,
      this.voidReasonId,
      this.currencyCurrencyCode,
      this.onDemandIgVerificationCodeId,
      this.useIgOrderApi,
      this.roomChargePaymentIds,
      this.isTimeZoneValidationEnabled,
      this.lOYALTYBannedPlayerMessage,
      this.lOYALTYPinNumberLength,
      this.currencyCurrencySymbol,
      this.gaPaymentName,
      this.onDemandTenderId,
      this.itemScanningDisabled,
      this.nameCaptureIsOptional,
      this.onDemandEmployeeId,
      this.profitCenterId,
      this.lOYALTYUiSystemBrandingLabel,
      this.nameCaptureNameCaptureInstruction,
      this.currencyCurrencyDecimalDigits,
      this.lOYALTYRestrictBannedPlayers,
      this.onDemandTerminalId});

  DisplayOptions.fromJson(Map<String, dynamic> json)
      : allowCartEdit = json['allowCartEdit'],
        checkType = json['check-type'],
        discountStateTitle = json['discountStateTitle'],
        lOYALTYUiNoTendersAvailableMsg =
            json['LOYALTY/uiNoTendersAvailableMsg'],
        isSmsEnabled = json['isSmsEnabled'],
        nameCaptureLastInitialOnly = json['name-capture/lastInitialOnly'],
        currencyCurrencyCultureName = json['currency/currencyCultureName'],
        isMobileNumberRequired = json['isMobileNumberRequired'],
        hideSKULookup = json['hideSKULookup'],
        isConceptLevelIgposConfigEnabled =
            json['isConceptLevelIgposConfigEnabled'],
        isProfileValid = json['isProfileValid'],
        voidReasonId = json['voidReasonId'],
        currencyCurrencyCode = json['currency/currencyCode'],
        onDemandIgVerificationCodeId = json['onDemandIgVerificationCodeId'],
        useIgOrderApi = json['useIgOrderApi'],
        roomChargePaymentIds = json['roomCharge/paymentIds'],
        isTimeZoneValidationEnabled = json['isTimeZoneValidationEnabled'],
        lOYALTYBannedPlayerMessage = json['LOYALTY/bannedPlayerMessage'],
        lOYALTYPinNumberLength = json['LOYALTY/pinNumberLength'],
        currencyCurrencySymbol = json['currency/currencySymbol'],
        gaPaymentName = json['gaPaymentName'],
        onDemandTenderId = json['onDemandTenderId'],
        itemScanningDisabled = json['itemScanningDisabled'],
        nameCaptureIsOptional = json['name-capture/isOptional'],
        onDemandEmployeeId = json['onDemandEmployeeId'],
        profitCenterId = json['profit-center-id'],
        lOYALTYUiSystemBrandingLabel = json['LOYALTY/uiSystemBrandingLabel'],
        nameCaptureNameCaptureInstruction =
            json['name-capture/nameCaptureInstruction'],
        currencyCurrencyDecimalDigits = json['currency/currencyDecimalDigits'],
        lOYALTYRestrictBannedPlayers = json['LOYALTY/restrictBannedPlayers'],
        onDemandTerminalId = json['onDemandTerminalId'];

  Map<String, dynamic> toJson() => {
        'allowCartEdit': allowCartEdit,
        'check-type': checkType,
        'discountStateTitle': discountStateTitle,
        'LOYALTY/uiNoTendersAvailableMsg': lOYALTYUiNoTendersAvailableMsg,
        'isSmsEnabled': isSmsEnabled,
        'name-capture/lastInitialOnly': nameCaptureLastInitialOnly,
        'currency/currencyCultureName': currencyCurrencyCultureName,
        'isMobileNumberRequired': isMobileNumberRequired,
        'hideSKULookup': hideSKULookup,
        'isConceptLevelIgposConfigEnabled': isConceptLevelIgposConfigEnabled,
        'isProfileValid': isProfileValid,
        'voidReasonId': voidReasonId,
        'currency/currencyCode': currencyCurrencyCode,
        'onDemandIgVerificationCodeId': onDemandIgVerificationCodeId,
        'useIgOrderApi': useIgOrderApi,
        'roomCharge/paymentIds': roomChargePaymentIds,
        'isTimeZoneValidationEnabled': isTimeZoneValidationEnabled,
        'LOYALTY/bannedPlayerMessage': lOYALTYBannedPlayerMessage,
        'LOYALTY/pinNumberLength': lOYALTYPinNumberLength,
        'currency/currencySymbol': currencyCurrencySymbol,
        'gaPaymentName': gaPaymentName,
        'onDemandTenderId': onDemandTenderId,
        'itemScanningDisabled': itemScanningDisabled,
        'name-capture/isOptional': nameCaptureIsOptional,
        'onDemandEmployeeId': onDemandEmployeeId,
        'profit-center-id': profitCenterId,
        'LOYALTY/uiSystemBrandingLabel': lOYALTYUiSystemBrandingLabel,
        'name-capture/nameCaptureInstruction':
            nameCaptureNameCaptureInstruction,
        'currency/currencyDecimalDigits': currencyCurrencyDecimalDigits,
        'LOYALTY/restrictBannedPlayers': lOYALTYRestrictBannedPlayers,
        'onDemandTerminalId': onDemandTerminalId
      };
}

/// Json path:
/// ```
/// response.response.allAvailableList.availableAt.openWindowTimeFrames
/// ```
class OpenWindowTimeFrames {
  // response.response.allAvailableList.availableAt.openWindowTimeFrames#opens
  final String opens;
  // response.response.allAvailableList.availableAt.openWindowTimeFrames#closes
  final String closes;

  OpenWindowTimeFrames({this.opens, this.closes});

  OpenWindowTimeFrames.fromJson(Map<String, dynamic> json)
      : opens = json['opens'],
        closes = json['closes'];

  Map<String, dynamic> toJson() => {'opens': opens, 'closes': closes};
}

/// Json path:
/// ```
/// response.response.allAvailableList.availableAt
/// ```
class AvailableAt {
  // response.response.allAvailableList.availableAt#opens
  final String opens;
  // response.response.allAvailableList.availableAt#closes
  final String closes;
  // response.response.allAvailableList.availableAt#availableNow
  final bool availableNow;
  // response.response.allAvailableList.availableAt#conceptsAvailableNow
  final bool conceptsAvailableNow;
  // response.response.allAvailableList.availableAt#closingIn
  final int closingIn;
  // response.response.allAvailableList.availableAt#openWindowTimeFrames
  final List<OpenWindowTimeFrames> openWindowTimeFrames;

  AvailableAt(
      {this.opens,
      this.closes,
      this.availableNow,
      this.conceptsAvailableNow,
      this.closingIn,
      this.openWindowTimeFrames});

  AvailableAt.fromJson(Map<String, dynamic> json)
      : opens = json['opens'],
        closes = json['closes'],
        availableNow = json['availableNow'],
        conceptsAvailableNow = json['conceptsAvailableNow'],
        closingIn = json['closingIn'],
        openWindowTimeFrames = (json['openWindowTimeFrames'] as List)
            ?.map((e) => OpenWindowTimeFrames.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'opens': opens,
        'closes': closes,
        'availableNow': availableNow,
        'conceptsAvailableNow': conceptsAvailableNow,
        'closingIn': closingIn,
        'openWindowTimeFrames':
            openWindowTimeFrames?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// response.response.allAvailableList
/// ```
class AllAvailableList {
  // response.response.allAvailableList#day
  final String day;
  // response.response.allAvailableList#index
  final int index;
  // response.response.allAvailableList#availableAt
  final AvailableAt availableAt;

  AllAvailableList({this.day, this.index, this.availableAt});

  AllAvailableList.fromJson(Map<String, dynamic> json)
      : day = json['day'],
        index = json['index'],
        availableAt = AvailableAt.fromJson(json['availableAt'] ?? {});

  Map<String, dynamic> toJson() =>
      {'day': day, 'index': index, 'availableAt': availableAt?.toJson()};
}

/// Json path:
/// ```
/// response.response.atriumConfig.autoDeduct
/// ```
class AutoDeduct {
  // response.response.atriumConfig.autoDeduct#displayName
  final String displayName;
  // response.response.atriumConfig.autoDeduct#isEnabled
  final bool isEnabled;

  AutoDeduct({this.displayName, this.isEnabled});

  AutoDeduct.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        isEnabled = json['isEnabled'];

  Map<String, dynamic> toJson() =>
      {'displayName': displayName, 'isEnabled': isEnabled};
}

/// Json path:
/// ```
/// response.response.atriumConfig.manualDeduct
/// ```
class ManualDeduct {
  // response.response.atriumConfig.manualDeduct#isEnabled
  final bool isEnabled;
  // response.response.atriumConfig.manualDeduct#displayName
  final String displayName;

  ManualDeduct({this.isEnabled, this.displayName});

  ManualDeduct.fromJson(Map<String, dynamic> json)
      : isEnabled = json['isEnabled'],
        displayName = json['displayName'];

  Map<String, dynamic> toJson() =>
      {'isEnabled': isEnabled, 'displayName': displayName};
}

/// Json path:
/// ```
/// response.response.pay.payOptions
/// ```
class PayOptions {
  // response.response.pay.payOptions#type
  final String type;
  // response.response.pay.payOptions#paymentEnabled
  final bool paymentEnabled;
  // response.response.pay.payOptions#displayLabel
  final String displayLabel;
  // response.response.pay.payOptions#autoDeduct
  final AutoDeduct autoDeduct;
  // response.response.pay.payOptions#manualDeduct
  final ManualDeduct manualDeduct;
  // response.response.pay.payOptions#instructionText
  final String instructionText;
  // response.response.pay.payOptions#accountNumberLabelText
  final String accountNumberLabelText;
  // response.response.pay.payOptions#secondaryVerificationLabelText
  final String secondaryVerificationLabelText;
  // response.response.pay.payOptions#secondaryVerificationType
  final String secondaryVerificationType;

  PayOptions(
      {this.type,
      this.paymentEnabled,
      this.displayLabel,
      this.autoDeduct,
      this.manualDeduct,
      this.instructionText,
      this.accountNumberLabelText,
      this.secondaryVerificationLabelText,
      this.secondaryVerificationType});

  PayOptions.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        paymentEnabled = json['paymentEnabled'],
        displayLabel = json['displayLabel'],
        autoDeduct = AutoDeduct.fromJson(json['autoDeduct'] ?? {}),
        manualDeduct = ManualDeduct.fromJson(json['manualDeduct'] ?? {}),
        instructionText = json['instructionText'],
        accountNumberLabelText = json['accountNumberLabelText'],
        secondaryVerificationLabelText = json['secondaryVerificationLabelText'],
        secondaryVerificationType = json['secondaryVerificationType'];

  Map<String, dynamic> toJson() => {
        'type': type,
        'paymentEnabled': paymentEnabled,
        'displayLabel': displayLabel,
        'autoDeduct': autoDeduct?.toJson(),
        'manualDeduct': manualDeduct?.toJson(),
        'instructionText': instructionText,
        'accountNumberLabelText': accountNumberLabelText,
        'secondaryVerificationLabelText': secondaryVerificationLabelText,
        'secondaryVerificationType': secondaryVerificationType
      };
}

/// Json path:
/// ```
/// response.response.pay.stripeConfig.config
/// ```
class Config {
  // response.response.pay.stripeConfig.config#publishableKey
  final String publishableKey;
  // response.response.pay.stripeConfig.config#countryCode
  final String countryCode;

  Config({this.publishableKey, this.countryCode});

  Config.fromJson(Map<String, dynamic> json)
      : publishableKey = json['publishableKey'],
        countryCode = json['countryCode'];

  Map<String, dynamic> toJson() =>
      {'publishableKey': publishableKey, 'countryCode': countryCode};
}

/// Json path:
/// ```
/// response.response.pay.stripeConfig
/// ```
class StripeConfig {
  // response.response.pay.stripeConfig#type
  final String type;
  // response.response.pay.stripeConfig#paymentEnabled
  final bool paymentEnabled;
  // response.response.pay.stripeConfig#config
  final Config config;

  StripeConfig({this.type, this.paymentEnabled, this.config});

  StripeConfig.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        paymentEnabled = json['paymentEnabled'],
        config = Config.fromJson(json['config'] ?? {});

  Map<String, dynamic> toJson() => {
        'type': type,
        'paymentEnabled': paymentEnabled,
        'config': config?.toJson()
      };
}

/// Json path:
/// ```
/// response.response.pay
/// ```
class Pay {
  // response.response.pay#iFrameApi
  final String iFrameApi;
  // response.response.pay#paymentsEnabled
  final bool paymentsEnabled;
  // response.response.pay#iFrameTenantID
  final String iFrameTenantID;
  // response.response.pay#clientId
  final String clientId;
  // response.response.pay#headerText
  final String headerText;
  // response.response.pay#instructionText
  final String instructionText;
  // response.response.pay#subInstructionText
  final String subInstructionText;
  // response.response.pay#payOptions
  final List<PayOptions> payOptions;
  // response.response.pay#stripeConfig
  final StripeConfig stripeConfig;

  Pay(
      {this.iFrameApi,
      this.paymentsEnabled,
      this.iFrameTenantID,
      this.clientId,
      this.headerText,
      this.instructionText,
      this.subInstructionText,
      this.payOptions,
      this.stripeConfig});

  Pay.fromJson(Map<String, dynamic> json)
      : iFrameApi = json['iFrameApi'],
        paymentsEnabled = json['paymentsEnabled'],
        iFrameTenantID = json['iFrameTenantID'],
        clientId = json['clientId'],
        headerText = json['headerText'],
        instructionText = json['instructionText'],
        subInstructionText = json['subInstructionText'],
        payOptions = (json['payOptions'] as List)
            ?.map((e) => PayOptions.fromJson(e ?? {}))
            ?.toList(),
        stripeConfig = StripeConfig.fromJson(json['stripeConfig'] ?? {});

  Map<String, dynamic> toJson() => {
        'iFrameApi': iFrameApi,
        'paymentsEnabled': paymentsEnabled,
        'iFrameTenantID': iFrameTenantID,
        'clientId': clientId,
        'headerText': headerText,
        'instructionText': instructionText,
        'subInstructionText': subInstructionText,
        'payOptions': payOptions?.map((e) => e?.toJson())?.toList(),
        'stripeConfig': stripeConfig?.toJson()
      };
}

/// Json path:
/// ```
/// response.response.etf
/// ```
class Etf {
  // response.response.etf#etfEnabled
  final bool etfEnabled;
  // response.response.etf#varianceEnabled
  final bool varianceEnabled;
  // response.response.etf#variancePercentage
  final int variancePercentage;

  Etf({this.etfEnabled, this.varianceEnabled, this.variancePercentage});

  Etf.fromJson(Map<String, dynamic> json)
      : etfEnabled = json['etfEnabled'],
        varianceEnabled = json['varianceEnabled'],
        variancePercentage = json['variancePercentage'];

  Map<String, dynamic> toJson() => {
        'etfEnabled': etfEnabled,
        'varianceEnabled': varianceEnabled,
        'variancePercentage': variancePercentage
      };
}

/// Json path:
/// ```
/// response.response.nameCapture
/// ```
class NameCapture {
  // response.response.nameCapture#guestNameRequired
  final bool guestNameRequired;
  // response.response.nameCapture#guestNameInstructionText
  final String guestNameInstructionText;
  // response.response.nameCapture#featureEnabled
  final bool featureEnabled;

  NameCapture(
      {this.guestNameRequired,
      this.guestNameInstructionText,
      this.featureEnabled});

  NameCapture.fromJson(Map<String, dynamic> json)
      : guestNameRequired = json['guestNameRequired'],
        guestNameInstructionText = json['guestNameInstructionText'],
        featureEnabled = json['featureEnabled'];

  Map<String, dynamic> toJson() => {
        'guestNameRequired': guestNameRequired,
        'guestNameInstructionText': guestNameInstructionText,
        'featureEnabled': featureEnabled
      };
}

/// Json path:
/// ```
/// response.response.sms
/// ```
class Sms {
  // response.response.sms#isSmsEnabled
  final bool isSmsEnabled;
  // response.response.sms#isMobileNumberRequired
  final bool isMobileNumberRequired;
  // response.response.sms#countryCode
  final String countryCode;
  // response.response.sms#regionCode
  final String regionCode;

  Sms(
      {this.isSmsEnabled,
      this.isMobileNumberRequired,
      this.countryCode,
      this.regionCode});

  Sms.fromJson(Map<String, dynamic> json)
      : isSmsEnabled = json['isSmsEnabled'],
        isMobileNumberRequired = json['isMobileNumberRequired'],
        countryCode = json['countryCode'],
        regionCode = json['regionCode'];

  Map<String, dynamic> toJson() => {
        'isSmsEnabled': isSmsEnabled,
        'isMobileNumberRequired': isMobileNumberRequired,
        'countryCode': countryCode,
        'regionCode': regionCode
      };
}

/// Json path:
/// ```
/// response.response.calendarScheduling
/// ```
class CalendarScheduling {
  // response.response.calendarScheduling#featureEnabled
  final bool featureEnabled;
  // response.response.calendarScheduling#minimumDays
  final int minimumDays;
  // response.response.calendarScheduling#maximumDays
  final int maximumDays;
  // response.response.calendarScheduling#daysToAdd
  final int daysToAdd;

  CalendarScheduling(
      {this.featureEnabled,
      this.minimumDays,
      this.maximumDays,
      this.daysToAdd});

  CalendarScheduling.fromJson(Map<String, dynamic> json)
      : featureEnabled = json['featureEnabled'],
        minimumDays = json['minimumDays'],
        maximumDays = json['maximumDays'],
        daysToAdd = json['daysToAdd'];

  Map<String, dynamic> toJson() => {
        'featureEnabled': featureEnabled,
        'minimumDays': minimumDays,
        'maximumDays': maximumDays,
        'daysToAdd': daysToAdd
      };
}

/// Json path:
/// ```
/// response.response.loyaltyDetails.loyaltyDetailsAccounts
/// ```
class LoyaltyDetailsAccounts {
  // response.response.loyaltyDetails.loyaltyDetailsAccounts#id
  final String id;
  // response.response.loyaltyDetails.loyaltyDetailsAccounts#enabled
  final bool enabled;

  LoyaltyDetailsAccounts({this.id, this.enabled});

  LoyaltyDetailsAccounts.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        enabled = json['enabled'];

  Map<String, dynamic> toJson() => {'id': id, 'enabled': enabled};
}

/// Json path:
/// ```
/// response.response.loyaltyDetails
/// ```
class LoyaltyDetails {
  // response.response.loyaltyDetails#loyaltyDetailsAccounts
  final List<LoyaltyDetailsAccounts> loyaltyDetailsAccounts;

  LoyaltyDetails({this.loyaltyDetailsAccounts});

  LoyaltyDetails.fromJson(Map<String, dynamic> json)
      : loyaltyDetailsAccounts = (json['loyaltyDetailsAccounts'] as List)
            ?.map((e) => LoyaltyDetailsAccounts.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'loyaltyDetailsAccounts':
            loyaltyDetailsAccounts?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// response.response.emailReceipt
/// ```
class EmailReceipt {
  // response.response.emailReceipt#receiptFromName
  final String receiptFromName;
  // response.response.emailReceipt#receiptFromAddress
  final String receiptFromAddress;
  // response.response.emailReceipt#receiptSubject
  final String receiptSubject;
  // response.response.emailReceipt#overrideFromStoreConfig
  final bool overrideFromStoreConfig;
  // response.response.emailReceipt#customerAddress
  final List<dynamic> customerAddress;
  // response.response.emailReceipt#featureEnabled
  final bool featureEnabled;

  EmailReceipt(
      {this.receiptFromName,
      this.receiptFromAddress,
      this.receiptSubject,
      this.overrideFromStoreConfig,
      this.customerAddress,
      this.featureEnabled});

  EmailReceipt.fromJson(Map<String, dynamic> json)
      : receiptFromName = json['receiptFromName'],
        receiptFromAddress = json['receiptFromAddress'],
        receiptSubject = json['receiptSubject'],
        overrideFromStoreConfig = json['overrideFromStoreConfig'],
        customerAddress = json['customerAddress'],
        featureEnabled = json['featureEnabled'];

  Map<String, dynamic> toJson() => {
        'receiptFromName': receiptFromName,
        'receiptFromAddress': receiptFromAddress,
        'receiptSubject': receiptSubject,
        'overrideFromStoreConfig': overrideFromStoreConfig,
        'customerAddress': customerAddress,
        'featureEnabled': featureEnabled
      };
}

/// Json path:
/// ```
/// response.response.textReceipt
/// ```
class TextReceipt {
  // response.response.textReceipt#featureEnabled
  final bool featureEnabled;

  TextReceipt({this.featureEnabled});

  TextReceipt.fromJson(Map<String, dynamic> json)
      : featureEnabled = json['featureEnabled'];

  Map<String, dynamic> toJson() => {'featureEnabled': featureEnabled};
}

/// Json path:
/// ```
/// response.response.textReceiptFormat
/// ```
class TextReceiptFormat {
  // response.response.textReceiptFormat#introText
  final String introText;
  // response.response.textReceiptFormat#overrideFromStoreConfig
  final bool overrideFromStoreConfig;
  // response.response.textReceiptFormat#isItemizedListEnabled
  final bool isItemizedListEnabled;
  // response.response.textReceiptFormat#isTotalsEnabled
  final bool isTotalsEnabled;
  // response.response.textReceiptFormat#isIntroEnabled
  final bool isIntroEnabled;

  TextReceiptFormat(
      {this.introText,
      this.overrideFromStoreConfig,
      this.isItemizedListEnabled,
      this.isTotalsEnabled,
      this.isIntroEnabled});

  TextReceiptFormat.fromJson(Map<String, dynamic> json)
      : introText = json['introText'],
        overrideFromStoreConfig = json['overrideFromStoreConfig'],
        isItemizedListEnabled = json['isItemizedListEnabled'],
        isTotalsEnabled = json['isTotalsEnabled'],
        isIntroEnabled = json['isIntroEnabled'];

  Map<String, dynamic> toJson() => {
        'introText': introText,
        'overrideFromStoreConfig': overrideFromStoreConfig,
        'isItemizedListEnabled': isItemizedListEnabled,
        'isTotalsEnabled': isTotalsEnabled,
        'isIntroEnabled': isIntroEnabled
      };
}

/// Json path:
/// ```
/// response.response.navigation
/// ```
class Navigation {
  // response.response.navigation#skipConceptPageIfPossible
  final bool skipConceptPageIfPossible;

  Navigation({this.skipConceptPageIfPossible});

  Navigation.fromJson(Map<String, dynamic> json)
      : skipConceptPageIfPossible = json['skipConceptPageIfPossible'];

  Map<String, dynamic> toJson() =>
      {'skipConceptPageIfPossible': skipConceptPageIfPossible};
}

/// Json path:
/// ```
/// response.response.dineInConfig
/// ```
class DineInConfig {
  // response.response.dineInConfig#featureEnabled
  final bool featureEnabled;
  // response.response.dineInConfig#kitchenText
  final String kitchenText;
  // response.response.dineInConfig#buttonText
  final String buttonText;

  DineInConfig({this.featureEnabled, this.kitchenText, this.buttonText});

  DineInConfig.fromJson(Map<String, dynamic> json)
      : featureEnabled = json['featureEnabled'],
        kitchenText = json['kitchenText'],
        buttonText = json['buttonText'];

  Map<String, dynamic> toJson() => {
        'featureEnabled': featureEnabled,
        'kitchenText': kitchenText,
        'buttonText': buttonText
      };
}

/// Json path:
/// ```
/// response.response.pickUpConfig.conceptEntries[]
/// ```
class ConceptEntryNum {
  // response.response.pickUpConfig.conceptEntries[]#key
  final String key;
  // response.response.pickUpConfig.conceptEntries[]#id
  final String id;
  // response.response.pickUpConfig.conceptEntries[]#confirmationText
  final String confirmationText;

  ConceptEntryNum({this.key, this.id, this.confirmationText});
  String getKey() => key;

  ConceptEntryNum.fromJson(this.key, Map<String, dynamic> json)
      : id = json['id'],
        confirmationText = json['confirmationText'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'confirmationText': confirmationText};
}

/// Json path:
/// ```
/// response.response.pickUpConfig.conceptEntries
/// ```
class ConceptEntry {
  // response.response.pickUpConfig.conceptEntries#conceptEntry
  final List<ConceptEntryNum> conceptEntry;

  ConceptEntry({this.conceptEntry});

  ConceptEntry.fromJson(Map<String, dynamic> json)
      : conceptEntry = json.keys
            .map((e) => ConceptEntryNum.fromJson(e, json[e] ?? {}))
            .toList();

  Map<String, dynamic> toJson() => {
        'conceptEntry': Map.fromIterables(conceptEntry?.map((e) => e.getKey()),
            conceptEntry?.map((e) => e?.toJson()))
      };
}

/// Json path:
/// ```
/// response.response.pickUpConfig
/// ```
class PickUpConfig {
  // response.response.pickUpConfig#featureEnabled
  final bool featureEnabled;
  // response.response.pickUpConfig#kitchenText
  final String kitchenText;
  // response.response.pickUpConfig#buttonText
  final String buttonText;
  // response.response.pickUpConfig#conceptEntries
  final ConceptEntry conceptEntries;
  // response.response.pickUpConfig#conceptEntriesOrderArray
  final List<String> conceptEntriesOrderArray;
  // response.response.pickUpConfig#defaultConfirmationText
  final String defaultConfirmationText;

  PickUpConfig(
      {this.featureEnabled,
      this.kitchenText,
      this.buttonText,
      this.conceptEntries,
      this.conceptEntriesOrderArray,
      this.defaultConfirmationText});

  PickUpConfig.fromJson(Map<String, dynamic> json)
      : featureEnabled = json['featureEnabled'],
        kitchenText = json['kitchenText'],
        buttonText = json['buttonText'],
        conceptEntries = ConceptEntry.fromJson(json['conceptEntries'] ?? {}),
        conceptEntriesOrderArray =
            json['conceptEntriesOrderArray']?.cast<String>(),
        defaultConfirmationText = json['defaultConfirmationText'];

  Map<String, dynamic> toJson() => {
        'featureEnabled': featureEnabled,
        'kitchenText': kitchenText,
        'buttonText': buttonText,
        'conceptEntries': conceptEntries?.toJson(),
        'conceptEntriesOrderArray': conceptEntriesOrderArray,
        'defaultConfirmationText': defaultConfirmationText
      };
}

/// Json path:
/// ```
/// response.response.profitCenter
/// ```
class ProfitCenter {
  // response.response.profitCenter#useProfitCenterByConcept
  final bool useProfitCenterByConcept;

  ProfitCenter({this.useProfitCenterByConcept});

  ProfitCenter.fromJson(Map<String, dynamic> json)
      : useProfitCenterByConcept = json['useProfitCenterByConcept'];

  Map<String, dynamic> toJson() =>
      {'useProfitCenterByConcept': useProfitCenterByConcept};
}

/// Json path:
/// ```
/// response.response.specialInstructions
/// ```
class SpecialInstructions {
  // response.response.specialInstructions#headerText
  final String headerText;
  // response.response.specialInstructions#instructionText
  final String instructionText;
  // response.response.specialInstructions#featureEnabled
  final bool featureEnabled;
  // response.response.specialInstructions#characterLimit
  final int characterLimit;

  SpecialInstructions(
      {this.headerText,
      this.instructionText,
      this.featureEnabled,
      this.characterLimit});

  SpecialInstructions.fromJson(Map<String, dynamic> json)
      : headerText = json['headerText'],
        instructionText = json['instructionText'],
        featureEnabled = json['featureEnabled'],
        characterLimit = json['characterLimit'];

  Map<String, dynamic> toJson() => {
        'headerText': headerText,
        'instructionText': instructionText,
        'featureEnabled': featureEnabled,
        'characterLimit': characterLimit
      };
}

/// Json path:
/// ```
/// response.response.atriumConfig.tenders[]
/// ```
class TenderNum {
  // response.response.atriumConfig.tenders[]#key
  final String key;
  // response.response.atriumConfig.tenders[]#tenderType
  final String tenderType;
  // response.response.atriumConfig.tenders[]#displayName
  final String displayName;
  // response.response.atriumConfig.tenders[]#taxableTenderId
  final String taxableTenderId;
  // response.response.atriumConfig.tenders[]#taxExemptTenderId
  final String taxExemptTenderId;
  // response.response.atriumConfig.tenders[]#isDefault
  final bool isDefault;
  // response.response.atriumConfig.tenders[]#atriumTenderId
  final String atriumTenderId;

  TenderNum(
      {this.key,
      this.tenderType,
      this.displayName,
      this.taxableTenderId,
      this.taxExemptTenderId,
      this.isDefault,
      this.atriumTenderId});
  String getKey() => key;

  TenderNum.fromJson(this.key, Map<String, dynamic> json)
      : tenderType = json['tenderType'],
        displayName = json['displayName'],
        taxableTenderId = json['taxableTenderId'],
        taxExemptTenderId = json['taxExemptTenderId'],
        isDefault = json['isDefault'],
        atriumTenderId = json['atriumTenderId'];

  Map<String, dynamic> toJson() => {
        'tenderType': tenderType,
        'displayName': displayName,
        'taxableTenderId': taxableTenderId,
        'taxExemptTenderId': taxExemptTenderId,
        'isDefault': isDefault,
        'atriumTenderId': atriumTenderId
      };
}

/// Json path:
/// ```
/// response.response.atriumConfig.tenders
/// ```
class Tender {
  // response.response.atriumConfig.tenders#tender
  final List<TenderNum> tender;

  Tender({this.tender});

  Tender.fromJson(Map<String, dynamic> json)
      : tender =
            json.keys.map((e) => TenderNum.fromJson(e, json[e] ?? {})).toList();

  Map<String, dynamic> toJson() => {
        'tender': Map.fromIterables(
            tender?.map((e) => e.getKey()), tender?.map((e) => e?.toJson()))
      };
}

/// Json path:
/// ```
/// response.response.atriumConfig.cardReaderScreenConfig
/// ```
class CardReaderScreenConfig {
  // response.response.atriumConfig.cardReaderScreenConfig#topInstructionText
  final String topInstructionText;

  CardReaderScreenConfig({this.topInstructionText});

  CardReaderScreenConfig.fromJson(Map<String, dynamic> json)
      : topInstructionText = json['topInstructionText'];

  Map<String, dynamic> toJson() => {'topInstructionText': topInstructionText};
}

/// Json path:
/// ```
/// response.response.atriumConfig
/// ```
class AtriumConfig {
  // response.response.atriumConfig#terminalId
  final String terminalId;
  // response.response.atriumConfig#manualDeduct
  final ManualDeduct manualDeduct;
  // response.response.atriumConfig#tenders
  final Tender tenders;
  // response.response.atriumConfig#autoDeduct
  final AutoDeduct autoDeduct;
  // response.response.atriumConfig#cardReaderScreenConfig
  final CardReaderScreenConfig cardReaderScreenConfig;

  AtriumConfig(
      {this.terminalId,
      this.manualDeduct,
      this.tenders,
      this.autoDeduct,
      this.cardReaderScreenConfig});

  AtriumConfig.fromJson(Map<String, dynamic> json)
      : terminalId = json['terminalId'].toString(),
        manualDeduct = ManualDeduct.fromJson(json['manualDeduct'] ?? {}),
        tenders = Tender.fromJson(json['tenders'] ?? {}),
        autoDeduct = AutoDeduct.fromJson(json['autoDeduct'] ?? {}),
        cardReaderScreenConfig = CardReaderScreenConfig.fromJson(
            json['cardReaderScreenConfig'] ?? {});

  Map<String, dynamic> toJson() => {
        'terminalId': terminalId,
        'manualDeduct': manualDeduct?.toJson(),
        'tenders': tenders?.toJson(),
        'autoDeduct': autoDeduct?.toJson(),
        'cardReaderScreenConfig': cardReaderScreenConfig?.toJson()
      };
}

/// Json path:
/// ```
/// response.response.limitItemsByClassification.classificationDetails
/// ```
class ClassificationDetails {
  // response.response.limitItemsByClassification.classificationDetails#classifiedBy
  final String classifiedBy;
  // response.response.limitItemsByClassification.classificationDetails#maxItems
  final int maxItems;
  // response.response.limitItemsByClassification.classificationDetails#alertHeaderText
  final String alertHeaderText;
  // response.response.limitItemsByClassification.classificationDetails#alertInstructionText
  final String alertInstructionText;
  // response.response.limitItemsByClassification.classificationDetails#revenueCategoryIds
  final List<dynamic> revenueCategoryIds;
  // response.response.limitItemsByClassification.classificationDetails#productClassIds
  final List<dynamic> productClassIds;

  ClassificationDetails(
      {this.classifiedBy,
      this.maxItems,
      this.alertHeaderText,
      this.alertInstructionText,
      this.revenueCategoryIds,
      this.productClassIds});

  ClassificationDetails.fromJson(Map<String, dynamic> json)
      : classifiedBy = json['classifiedBy'],
        maxItems = json['maxItems'],
        alertHeaderText = json['alertHeaderText'],
        alertInstructionText = json['alertInstructionText'],
        revenueCategoryIds = json['revenueCategoryIds'],
        productClassIds = json['productClassIds'];

  Map<String, dynamic> toJson() => {
        'classifiedBy': classifiedBy,
        'maxItems': maxItems,
        'alertHeaderText': alertHeaderText,
        'alertInstructionText': alertInstructionText,
        'revenueCategoryIds': revenueCategoryIds,
        'productClassIds': productClassIds
      };
}

/// Json path:
/// ```
/// response.response.limitItemsByClassification
/// ```
class LimitItemsByClassification {
  // response.response.limitItemsByClassification#featureEnabled
  final bool featureEnabled;
  // response.response.limitItemsByClassification#classificationDetails
  final List<ClassificationDetails> classificationDetails;

  LimitItemsByClassification({this.featureEnabled, this.classificationDetails});

  LimitItemsByClassification.fromJson(Map<String, dynamic> json)
      : featureEnabled = json['featureEnabled'],
        classificationDetails = (json['classificationDetails'] as List)
            ?.map((e) => ClassificationDetails.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'featureEnabled': featureEnabled,
        'classificationDetails':
            classificationDetails?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// response.response.cartScreen.customizeItem
/// ```
class CustomizeItem {
  // response.response.cartScreen.customizeItem#isEnabled
  final bool isEnabled;

  CustomizeItem({this.isEnabled});

  CustomizeItem.fromJson(Map<String, dynamic> json)
      : isEnabled = json['isEnabled'];

  Map<String, dynamic> toJson() => {'isEnabled': isEnabled};
}

/// Json path:
/// ```
/// response.response.cartScreen
/// ```
class CartScreen {
  // response.response.cartScreen#limitItemsByClassification
  final LimitItemsByClassification limitItemsByClassification;
  // response.response.cartScreen#customizeItem
  final CustomizeItem customizeItem;

  CartScreen({this.limitItemsByClassification, this.customizeItem});

  CartScreen.fromJson(Map<String, dynamic> json)
      : limitItemsByClassification = LimitItemsByClassification.fromJson(
            json['limitItemsByClassification'] ?? {}),
        customizeItem = CustomizeItem.fromJson(json['customizeItem'] ?? {});

  Map<String, dynamic> toJson() => {
        'limitItemsByClassification': limitItemsByClassification?.toJson(),
        'customizeItem': customizeItem?.toJson()
      };
}

/// Json path:
/// ```
/// response.response.kitchenSettings
/// ```
class KitchenSettings {
  // response.response.kitchenSettings#kitchenContextId
  final String kitchenContextId;

  KitchenSettings({this.kitchenContextId});

  KitchenSettings.fromJson(Map<String, dynamic> json)
      : kitchenContextId = json['kitchenContextId'];

  Map<String, dynamic> toJson() => {'kitchenContextId': kitchenContextId};
}

/// Json path:
/// ```
/// response.response.tenderRestriction
/// ```
class TenderRestriction {
  TenderRestriction.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.rtpProfileConfig
/// ```
class RtpProfileConfig {
  RtpProfileConfig.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.rtpConfiguration
/// ```
class RtpConfiguration {
  RtpConfiguration.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.contentLocalization
/// ```
class ContentLocalization {
  ContentLocalization.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.disneyConfig
/// ```
class DisneyConfig {
  DisneyConfig.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.gaDiscounts
/// ```
class GaDiscounts {
  GaDiscounts.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.storeInfo.properties
/// ```
class Properties {
  // response.response.storeInfo.properties#selectedLanguage
  final String selectedLanguage;
  // response.response.storeInfo.properties#taxIdentificationNumber
  final String taxIdentificationNumber;

  Properties({this.selectedLanguage, this.taxIdentificationNumber});

  Properties.fromJson(Map<String, dynamic> json)
      : selectedLanguage = json['selectedLanguage'],
        taxIdentificationNumber = json['taxIdentificationNumber'];

  Map<String, dynamic> toJson() => {
        'selectedLanguage': selectedLanguage,
        'taxIdentificationNumber': taxIdentificationNumber
      };
}

/// Json path:
/// ```
/// response.response.storeInfo
/// ```
class StoreInfo {
  // response.response.storeInfo#businessContextId
  final String businessContextId;
  // response.response.storeInfo#tenantId
  final String tenantId;
  // response.response.storeInfo#storeInfoId
  final String storeInfoId;
  // response.response.storeInfo#storeName
  final String storeName;
  // response.response.storeInfo#timezone
  final String timezone;
  // response.response.storeInfo#receiptFooterText
  final String receiptFooterText;
  // response.response.storeInfo#logoDetails
  final LogoDetails logoDetails;
  // response.response.storeInfo#properties
  final Properties properties;
  // response.response.storeInfo#storeInfoOptions
  final StoreInfoOptions storeInfoOptions;
  // response.response.storeInfo#taxIdentificationNumber
  final String taxIdentificationNumber;
  // response.response.storeInfo#address
  final List<String> address;
  // response.response.storeInfo#image
  final String image;
  // response.response.storeInfo#address1
  final String address1;

  StoreInfo(
      {this.businessContextId,
      this.tenantId,
      this.storeInfoId,
      this.storeName,
      this.timezone,
      this.receiptFooterText,
      this.logoDetails,
      this.properties,
      this.storeInfoOptions,
      this.taxIdentificationNumber,
      this.address,
      this.image,
      this.address1});

  StoreInfo.fromJson(Map<String, dynamic> json)
      : businessContextId = json['businessContextId'],
        tenantId = json['tenantId'],
        storeInfoId = json['storeInfoId'],
        storeName = json['storeName'],
        timezone = json['timezone'],
        receiptFooterText = json['receiptFooterText'],
        logoDetails = LogoDetails.fromJson(json['logoDetails'] ?? {}),
        properties = Properties.fromJson(json['properties'] ?? {}),
        storeInfoOptions =
            StoreInfoOptions.fromJson(json['storeInfoOptions'] ?? {}),
        taxIdentificationNumber = json['taxIdentificationNumber'],
        address = json['address']?.cast<String>(),
        image = json['image'],
        address1 = json['address1'];

  Map<String, dynamic> toJson() => {
        'businessContextId': businessContextId,
        'tenantId': tenantId,
        'storeInfoId': storeInfoId,
        'storeName': storeName,
        'timezone': timezone,
        'receiptFooterText': receiptFooterText,
        'logoDetails': logoDetails?.toJson(),
        'properties': properties?.toJson(),
        'storeInfoOptions': storeInfoOptions?.toJson(),
        'taxIdentificationNumber': taxIdentificationNumber,
        'address': address,
        'image': image,
        'address1': address1
      };
}

/// Json path:
/// ```
/// response.response.modifiers
/// ```
class Modifiers {
  Modifiers.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response
/// ```
class Kitchen {
  // response.response#id
  final String id;
  // response.response#image
  final String image;
  // response.response#displayProfileId
  final String displayProfileId;
  // response.response#displayOptions
  final DisplayOptions displayOptions;
  // response.response#address
  final List<String> address;
  // response.response#timeZone
  final String timeZone;
  // response.response#availableAt
  final AvailableAt availableAt;
  // response.response#allAvailableList
  final List<AllAvailableList> allAvailableList;
  // response.response#name
  final String name;
  // response.response#profitCenterId
  final String profitCenterId;
  // response.response#pay
  final Pay pay;
  // response.response#multiPaymentEnabled
  final bool multiPaymentEnabled;
  // response.response#digitalMenuEnabled
  final bool digitalMenuEnabled;
  // response.response#multiPassEnabled
  final bool multiPassEnabled;
  // response.response#cateringEnabled
  final bool cateringEnabled;
  // response.response#etf
  final Etf etf;
  // response.response#nameCapture
  final NameCapture nameCapture;
  // response.response#aliasNameCaptureEnabled
  final bool aliasNameCaptureEnabled;
  // response.response#useIgOrderApi
  final bool useIgOrderApi;
  // response.response#conceptLevelIgPosConfig
  final bool conceptLevelIgPosConfig;
  // response.response#sms
  final Sms sms;
  // response.response#todaySchedulingEnabled
  final bool todaySchedulingEnabled;
  // response.response#calendarScheduling
  final CalendarScheduling calendarScheduling;
  // response.response#isCalendarSchedulingEnabled
  final bool isCalendarSchedulingEnabled;
  // response.response#isAsapOrderDisabled
  final bool isAsapOrderDisabled;
  // response.response#isFutureSchedulingEnabled
  final bool isFutureSchedulingEnabled;
  // response.response#futureScheduledDays
  final int futureScheduledDays;
  // response.response#isScheduleOrderEnabled
  final bool isScheduleOrderEnabled;
  // response.response#isLoyaltyEnabled
  final bool isLoyaltyEnabled;
  // response.response#paymentLoyaltyEnabled
  final bool paymentLoyaltyEnabled;
  // response.response#loyaltyAccrueEnabled
  final bool loyaltyAccrueEnabled;
  // response.response#loyaltyDetails
  final LoyaltyDetails loyaltyDetails;
  // response.response#dateTime
  final String dateTime;
  // response.response#emailReceipt
  final EmailReceipt emailReceipt;
  // response.response#textReceipt
  final TextReceipt textReceipt;
  // response.response#textReceiptFormat
  final TextReceiptFormat textReceiptFormat;
  // response.response#navigation
  final Navigation navigation;
  // response.response#skipConceptsPage
  final bool skipConceptsPage;
  // response.response#dineInConfig
  final DineInConfig dineInConfig;
  // response.response#pickUpConfig
  final PickUpConfig pickUpConfig;
  // response.response#profitCenter
  final ProfitCenter profitCenter;
  // response.response#checkTypeId
  final String checkTypeId;
  // response.response#roomChargeIds
  final String roomChargeIds;
  // response.response#storePriceLevel
  final String storePriceLevel;
  // response.response#specialInstructions
  final SpecialInstructions specialInstructions;
  // response.response#atriumConfig
  final AtriumConfig atriumConfig;
  // response.response#cartScreen
  final CartScreen cartScreen;
  // response.response#limitItemsByClassification
  final LimitItemsByClassification limitItemsByClassification;
  // response.response#hideAllPrices
  final bool hideAllPrices;
  // response.response#zeroCheckout
  final bool zeroCheckout;
  // response.response#showSummaryItemList
  final bool showSummaryItemList;
  // response.response#discountEnabled
  final bool discountEnabled;
  // response.response#discountConfig
  final bool discountConfig;
  // response.response#kitchenSettings
  final KitchenSettings kitchenSettings;
  // response.response#tenderRestriction
  final TenderRestriction tenderRestriction;
  // response.response#rtpProfileConfig
  final RtpProfileConfig rtpProfileConfig;
  // response.response#rtpConfiguration
  final RtpConfiguration rtpConfiguration;
  // response.response#contentLocalization
  final ContentLocalization contentLocalization;
  // response.response#disneyConfig
  final DisneyConfig disneyConfig;
  // response.response#showIdentificationPage
  final bool showIdentificationPage;
  // response.response#gaDiscounts
  final GaDiscounts gaDiscounts;
  // response.response#storeAvailabeNow
  final bool storeAvailabeNow;
  // response.response#taxIdentificationNumber
  final String taxIdentificationNumber;
  // response.response#storeInfo
  final StoreInfo storeInfo;
  // response.response#modifiers
  final Modifiers modifiers;

  Kitchen(
      {this.id,
      this.image,
      this.displayProfileId,
      this.displayOptions,
      this.address,
      this.timeZone,
      this.availableAt,
      this.allAvailableList,
      this.name,
      this.profitCenterId,
      this.pay,
      this.multiPaymentEnabled,
      this.digitalMenuEnabled,
      this.multiPassEnabled,
      this.cateringEnabled,
      this.etf,
      this.nameCapture,
      this.aliasNameCaptureEnabled,
      this.useIgOrderApi,
      this.conceptLevelIgPosConfig,
      this.sms,
      this.todaySchedulingEnabled,
      this.calendarScheduling,
      this.isCalendarSchedulingEnabled,
      this.isAsapOrderDisabled,
      this.isFutureSchedulingEnabled,
      this.futureScheduledDays,
      this.isScheduleOrderEnabled,
      this.isLoyaltyEnabled,
      this.paymentLoyaltyEnabled,
      this.loyaltyAccrueEnabled,
      this.loyaltyDetails,
      this.dateTime,
      this.emailReceipt,
      this.textReceipt,
      this.textReceiptFormat,
      this.navigation,
      this.skipConceptsPage,
      this.dineInConfig,
      this.pickUpConfig,
      this.profitCenter,
      this.checkTypeId,
      this.roomChargeIds,
      this.storePriceLevel,
      this.specialInstructions,
      this.atriumConfig,
      this.cartScreen,
      this.limitItemsByClassification,
      this.hideAllPrices,
      this.zeroCheckout,
      this.showSummaryItemList,
      this.discountEnabled,
      this.discountConfig,
      this.kitchenSettings,
      this.tenderRestriction,
      this.rtpProfileConfig,
      this.rtpConfiguration,
      this.contentLocalization,
      this.disneyConfig,
      this.showIdentificationPage,
      this.gaDiscounts,
      this.storeAvailabeNow,
      this.taxIdentificationNumber,
      this.storeInfo,
      this.modifiers});

  Kitchen.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'],
        displayProfileId = json['displayProfileId'],
        displayOptions = DisplayOptions.fromJson(json['displayOptions'] ?? {}),
        address = json['address']?.cast<String>(),
        timeZone = json['timeZone'],
        availableAt = AvailableAt.fromJson(json['availableAt'] ?? {}),
        allAvailableList = (json['allAvailableList'] as List)
            ?.map((e) => AllAvailableList.fromJson(e ?? {}))
            ?.toList(),
        name = json['name'],
        profitCenterId = json['profitCenterId'],
        pay = Pay.fromJson(json['pay'] ?? {}),
        multiPaymentEnabled = json['multiPaymentEnabled'],
        digitalMenuEnabled = json['digitalMenuEnabled'],
        multiPassEnabled = json['multiPassEnabled'],
        cateringEnabled = json['cateringEnabled'],
        etf = Etf.fromJson(json['etf'] ?? {}),
        nameCapture = NameCapture.fromJson(json['nameCapture'] ?? {}),
        aliasNameCaptureEnabled = json['aliasNameCaptureEnabled'],
        useIgOrderApi = json['useIgOrderApi'],
        conceptLevelIgPosConfig = json['conceptLevelIgPosConfig'],
        sms = Sms.fromJson(json['sms'] ?? {}),
        todaySchedulingEnabled = json['todaySchedulingEnabled'],
        calendarScheduling =
            CalendarScheduling.fromJson(json['calendarScheduling'] ?? {}),
        isCalendarSchedulingEnabled = json['isCalendarSchedulingEnabled'],
        isAsapOrderDisabled = json['isAsapOrderDisabled'],
        isFutureSchedulingEnabled = json['isFutureSchedulingEnabled'],
        futureScheduledDays = json['futureScheduledDays'],
        isScheduleOrderEnabled = json['isScheduleOrderEnabled'],
        isLoyaltyEnabled = json['isLoyaltyEnabled'],
        paymentLoyaltyEnabled = json['paymentLoyaltyEnabled'],
        loyaltyAccrueEnabled = json['loyaltyAccrueEnabled'],
        loyaltyDetails = LoyaltyDetails.fromJson(json['loyaltyDetails'] ?? {}),
        dateTime = json['dateTime'],
        emailReceipt = EmailReceipt.fromJson(json['emailReceipt'] ?? {}),
        textReceipt = TextReceipt.fromJson(json['textReceipt'] ?? {}),
        textReceiptFormat =
            TextReceiptFormat.fromJson(json['textReceiptFormat'] ?? {}),
        navigation = Navigation.fromJson(json['navigation'] ?? {}),
        skipConceptsPage = json['skipConceptsPage'],
        dineInConfig = DineInConfig.fromJson(json['dineInConfig'] ?? {}),
        pickUpConfig = PickUpConfig.fromJson(json['pickUpConfig'] ?? {}),
        profitCenter = ProfitCenter.fromJson(json['profitCenter'] ?? {}),
        checkTypeId = json['checkTypeId'],
        roomChargeIds = json['roomChargeIds'],
        storePriceLevel = json['storePriceLevel'],
        specialInstructions =
            SpecialInstructions.fromJson(json['specialInstructions'] ?? {}),
        atriumConfig = AtriumConfig.fromJson(json['atriumConfig'] ?? {}),
        cartScreen = CartScreen.fromJson(json['cartScreen'] ?? {}),
        limitItemsByClassification = LimitItemsByClassification.fromJson(
            json['limitItemsByClassification'] ?? {}),
        hideAllPrices = json['hideAllPrices'],
        zeroCheckout = json['zeroCheckout'],
        showSummaryItemList = json['showSummaryItemList'],
        discountEnabled = json['discountEnabled'],
        discountConfig = json['discountConfig'],
        kitchenSettings =
            KitchenSettings.fromJson(json['kitchenSettings'] ?? {}),
        tenderRestriction =
            TenderRestriction.fromJson(json['tenderRestriction'] ?? {}),
        rtpProfileConfig =
            RtpProfileConfig.fromJson(json['rtpProfileConfig'] ?? {}),
        rtpConfiguration =
            RtpConfiguration.fromJson(json['rtpConfiguration'] ?? {}),
        contentLocalization =
            ContentLocalization.fromJson(json['contentLocalization'] ?? {}),
        disneyConfig = DisneyConfig.fromJson(json['disneyConfig'] ?? {}),
        showIdentificationPage = json['showIdentificationPage'],
        gaDiscounts = GaDiscounts.fromJson(json['gaDiscounts'] ?? {}),
        storeAvailabeNow = json['storeAvailabeNow'],
        taxIdentificationNumber = json['taxIdentificationNumber'],
        storeInfo = StoreInfo.fromJson(json['storeInfo'] ?? {}),
        modifiers = Modifiers.fromJson(json['modifiers'] ?? {});

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'displayProfileId': displayProfileId,
        'displayOptions': displayOptions?.toJson(),
        'address': address,
        'timeZone': timeZone,
        'availableAt': availableAt?.toJson(),
        'allAvailableList': allAvailableList?.map((e) => e?.toJson())?.toList(),
        'name': name,
        'profitCenterId': profitCenterId,
        'pay': pay?.toJson(),
        'multiPaymentEnabled': multiPaymentEnabled,
        'digitalMenuEnabled': digitalMenuEnabled,
        'multiPassEnabled': multiPassEnabled,
        'cateringEnabled': cateringEnabled,
        'etf': etf?.toJson(),
        'nameCapture': nameCapture?.toJson(),
        'aliasNameCaptureEnabled': aliasNameCaptureEnabled,
        'useIgOrderApi': useIgOrderApi,
        'conceptLevelIgPosConfig': conceptLevelIgPosConfig,
        'sms': sms?.toJson(),
        'todaySchedulingEnabled': todaySchedulingEnabled,
        'calendarScheduling': calendarScheduling?.toJson(),
        'isCalendarSchedulingEnabled': isCalendarSchedulingEnabled,
        'isAsapOrderDisabled': isAsapOrderDisabled,
        'isFutureSchedulingEnabled': isFutureSchedulingEnabled,
        'futureScheduledDays': futureScheduledDays,
        'isScheduleOrderEnabled': isScheduleOrderEnabled,
        'isLoyaltyEnabled': isLoyaltyEnabled,
        'paymentLoyaltyEnabled': paymentLoyaltyEnabled,
        'loyaltyAccrueEnabled': loyaltyAccrueEnabled,
        'loyaltyDetails': loyaltyDetails?.toJson(),
        'dateTime': dateTime,
        'emailReceipt': emailReceipt?.toJson(),
        'textReceipt': textReceipt?.toJson(),
        'textReceiptFormat': textReceiptFormat?.toJson(),
        'navigation': navigation?.toJson(),
        'skipConceptsPage': skipConceptsPage,
        'dineInConfig': dineInConfig?.toJson(),
        'pickUpConfig': pickUpConfig?.toJson(),
        'profitCenter': profitCenter?.toJson(),
        'checkTypeId': checkTypeId,
        'roomChargeIds': roomChargeIds,
        'storePriceLevel': storePriceLevel,
        'specialInstructions': specialInstructions?.toJson(),
        'atriumConfig': atriumConfig?.toJson(),
        'cartScreen': cartScreen?.toJson(),
        'limitItemsByClassification': limitItemsByClassification?.toJson(),
        'hideAllPrices': hideAllPrices,
        'zeroCheckout': zeroCheckout,
        'showSummaryItemList': showSummaryItemList,
        'discountEnabled': discountEnabled,
        'discountConfig': discountConfig,
        'kitchenSettings': kitchenSettings?.toJson(),
        'tenderRestriction': tenderRestriction?.toJson(),
        'rtpProfileConfig': rtpProfileConfig?.toJson(),
        'rtpConfiguration': rtpConfiguration?.toJson(),
        'contentLocalization': contentLocalization?.toJson(),
        'disneyConfig': disneyConfig?.toJson(),
        'showIdentificationPage': showIdentificationPage,
        'gaDiscounts': gaDiscounts?.toJson(),
        'storeAvailabeNow': storeAvailabeNow,
        'taxIdentificationNumber': taxIdentificationNumber,
        'storeInfo': storeInfo?.toJson(),
        'modifiers': modifiers?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/sites/1312
/// Method: GET
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Kitchen> kitchens;

  Response({this.kitchens, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : kitchens =
            (json as List)?.map((e) => Kitchen.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => kitchens?.map((e) => e?.toJson())?.toList();
}

