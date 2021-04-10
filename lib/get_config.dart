import 'base.dart';

/// Url: https://ondemand.rit.edu/api/config
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
/// response.storeList.storeInfo.logoDetails
/// ```
class LogoDetails {
  // response.storeList.storeInfo.logoDetails#RECEIPT_HEADER
  final ReceiptHeader receiptHeader;

  LogoDetails({this.receiptHeader});

  LogoDetails.fromJson(Map<String, dynamic> json)
      : receiptHeader = ReceiptHeader.fromJson(json['RECEIPT_HEADER'] ?? {});

  Map<String, dynamic> toJson() => {'RECEIPT_HEADER': receiptHeader?.toJson()};
}

/// Json path:
/// ```
/// response.storeList.storeInfo.properties
/// ```
class Properties {
  // response.storeList.storeInfo.properties#selectedLanguage
  final String selectedLanguage;
  // response.storeList.storeInfo.properties#taxIdentificationNumber
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
/// response.storeList.storeInfo
/// ```
class StoreInfo {
  // response.storeList.storeInfo#businessContextId
  final String businessContextId;
  // response.storeList.storeInfo#tenantId
  final String tenantId;
  // response.storeList.storeInfo#storeInfoId
  final String storeInfoId;
  // response.storeList.storeInfo#storeName
  final String storeName;
  // response.storeList.storeInfo#timezone
  final String timezone;
  // response.storeList.storeInfo#receiptFooterText
  final String receiptFooterText;
  // response.storeList.storeInfo#logoDetails
  final LogoDetails logoDetails;
  // response.storeList.storeInfo#properties
  final Properties properties;
  // response.storeList.storeInfo#storeInfoOptions
  final StoreInfoOptions storeInfoOptions;

  StoreInfo(
      {this.businessContextId,
      this.tenantId,
      this.storeInfoId,
      this.storeName,
      this.timezone,
      this.receiptFooterText,
      this.logoDetails,
      this.properties,
      this.storeInfoOptions});

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
            StoreInfoOptions.fromJson(json['storeInfoOptions'] ?? {});

  Map<String, dynamic> toJson() => {
        'businessContextId': businessContextId,
        'tenantId': tenantId,
        'storeInfoId': storeInfoId,
        'storeName': storeName,
        'timezone': timezone,
        'receiptFooterText': receiptFooterText,
        'logoDetails': logoDetails?.toJson(),
        'properties': properties?.toJson(),
        'storeInfoOptions': storeInfoOptions?.toJson()
      };
}

/// Json path:
/// ```
/// response.storeList
/// ```
class StoreList {
  // response.storeList#businessContextId
  final String businessContextId;
  // response.storeList#storeInfo
  final StoreInfo storeInfo;
  // response.storeList#displayProfileId
  final List<String> displayProfileId;

  StoreList({this.businessContextId, this.storeInfo, this.displayProfileId});

  StoreList.fromJson(Map<String, dynamic> json)
      : businessContextId = json['businessContextId'],
        storeInfo = StoreInfo.fromJson(json['storeInfo'] ?? {}),
        displayProfileId = json['displayProfileId']?.cast<String>();

  Map<String, dynamic> toJson() => {
        'businessContextId': businessContextId,
        'storeInfo': storeInfo?.toJson(),
        'displayProfileId': displayProfileId
      };
}

/// Json path:
/// ```
/// response.siteAuth.config.signIn
/// ```
class SignIn {
  // response.siteAuth.config.signIn#headerText
  final String headerText;
  // response.siteAuth.config.signIn#instructionText
  final String instructionText;
  // response.siteAuth.config.signIn#buttonText
  final String buttonText;
  // response.siteAuth.config.signIn#buttonColor
  final String buttonColor;
  // response.siteAuth.config.signIn#skipButtonText
  final String skipButtonText;

  SignIn(
      {this.headerText,
      this.instructionText,
      this.buttonText,
      this.buttonColor,
      this.skipButtonText});

  SignIn.fromJson(Map<String, dynamic> json)
      : headerText = json['headerText'],
        instructionText = json['instructionText'],
        buttonText = json['buttonText'],
        buttonColor = json['buttonColor'],
        skipButtonText = json['skipButtonText'];

  Map<String, dynamic> toJson() => {
        'headerText': headerText,
        'instructionText': instructionText,
        'buttonText': buttonText,
        'buttonColor': buttonColor,
        'skipButtonText': skipButtonText
      };
}

/// Json path:
/// ```
/// response.siteAuth.config
/// ```
class Config {
  // response.siteAuth.config#signIn
  final SignIn signIn;
  // response.siteAuth.config#integrationUrl
  final String integrationUrl;
  // response.siteAuth.config#idType
  final String idType;
  // response.siteAuth.config#samlFriendlyName
  final String samlFriendlyName;
  // response.siteAuth.config#samlUserIdKey
  final String samlUserIdKey;
  // response.siteAuth.config#samlHostDomain
  final String samlHostDomain;
  // response.siteAuth.config#keystoreLocation
  final String keystoreLocation;
  // response.siteAuth.config#loginMethods
  final List<dynamic> loginMethods;

  Config(
      {this.signIn,
      this.integrationUrl,
      this.idType,
      this.samlFriendlyName,
      this.samlUserIdKey,
      this.samlHostDomain,
      this.keystoreLocation,
      this.loginMethods});

  Config.fromJson(Map<String, dynamic> json)
      : signIn = SignIn.fromJson(json['signIn'] ?? {}),
        integrationUrl = json['integrationUrl'],
        idType = json['idType'],
        samlFriendlyName = json['samlFriendlyName'],
        samlUserIdKey = json['samlUserIdKey'],
        samlHostDomain = json['samlHostDomain'],
        keystoreLocation = json['keystoreLocation'],
        loginMethods = json['loginMethods'];

  Map<String, dynamic> toJson() => {
        'signIn': signIn?.toJson(),
        'integrationUrl': integrationUrl,
        'idType': idType,
        'samlFriendlyName': samlFriendlyName,
        'samlUserIdKey': samlUserIdKey,
        'samlHostDomain': samlHostDomain,
        'keystoreLocation': keystoreLocation,
        'loginMethods': loginMethods
      };
}

/// Json path:
/// ```
/// response.siteAuth
/// ```
class SiteAuth {
  // response.siteAuth#type
  final String type;
  // response.siteAuth#config
  final Config config;

  SiteAuth({this.type, this.config});

  SiteAuth.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        config = Config.fromJson(json['config'] ?? {});

  Map<String, dynamic> toJson() => {'type': type, 'config': config?.toJson()};
}

/// Json path:
/// ```
/// response.theme.desktop
/// ```
class Desktop {
  // response.theme.desktop#color
  final String color;
  // response.theme.desktop#showImage
  final String showImage;
  // response.theme.desktop#descriptionColor
  final String descriptionColor;
  // response.theme.desktop#backgroundImage
  final String backgroundImage;

  Desktop(
      {this.color,
      this.showImage,
      this.descriptionColor,
      this.backgroundImage});

  Desktop.fromJson(Map<String, dynamic> json)
      : color = json['color'],
        showImage = json['showImage'],
        descriptionColor = json['descriptionColor'],
        backgroundImage = json['backgroundImage'];

  Map<String, dynamic> toJson() => {
        'color': color,
        'showImage': showImage,
        'descriptionColor': descriptionColor,
        'backgroundImage': backgroundImage
      };
}

/// Json path:
/// ```
/// response.theme.mobile
/// ```
class Mobile {
  // response.theme.mobile#color
  final String color;
  // response.theme.mobile#descriptionColor
  final String descriptionColor;

  Mobile({this.color, this.descriptionColor});

  Mobile.fromJson(Map<String, dynamic> json)
      : color = json['color'],
        descriptionColor = json['descriptionColor'];

  Map<String, dynamic> toJson() =>
      {'color': color, 'descriptionColor': descriptionColor};
}

/// Json path:
/// ```
/// response.theme.textAndControls
/// ```
class TextAndControls {
  // response.theme.textAndControls#bannerColor
  final String bannerColor;
  // response.theme.textAndControls#bannerTextColor
  final String bannerTextColor;
  // response.theme.textAndControls#titleColor
  final String titleColor;
  // response.theme.textAndControls#descriptionColor
  final String descriptionColor;
  // response.theme.textAndControls#buttonControlColor
  final String buttonControlColor;
  // response.theme.textAndControls#buttonTextColor
  final String buttonTextColor;

  TextAndControls(
      {this.bannerColor,
      this.bannerTextColor,
      this.titleColor,
      this.descriptionColor,
      this.buttonControlColor,
      this.buttonTextColor});

  TextAndControls.fromJson(Map<String, dynamic> json)
      : bannerColor = json['bannerColor'],
        bannerTextColor = json['bannerTextColor'],
        titleColor = json['titleColor'],
        descriptionColor = json['descriptionColor'],
        buttonControlColor = json['buttonControlColor'],
        buttonTextColor = json['buttonTextColor'];

  Map<String, dynamic> toJson() => {
        'bannerColor': bannerColor,
        'bannerTextColor': bannerTextColor,
        'titleColor': titleColor,
        'descriptionColor': descriptionColor,
        'buttonControlColor': buttonControlColor,
        'buttonTextColor': buttonTextColor
      };
}

/// Json path:
/// ```
/// response.theme
/// ```
class Theme {
  // response.theme#logoImage
  final String logoImage;
  // response.theme#desktop
  final Desktop desktop;
  // response.theme#mobile
  final Mobile mobile;
  // response.theme#textAndControls
  final TextAndControls textAndControls;

  Theme({this.logoImage, this.desktop, this.mobile, this.textAndControls});

  Theme.fromJson(Map<String, dynamic> json)
      : logoImage = json['logoImage'],
        desktop = Desktop.fromJson(json['desktop'] ?? {}),
        mobile = Mobile.fromJson(json['mobile'] ?? {}),
        textAndControls =
            TextAndControls.fromJson(json['textAndControls'] ?? {});

  Map<String, dynamic> toJson() => {
        'logoImage': logoImage,
        'desktop': desktop?.toJson(),
        'mobile': mobile?.toJson(),
        'textAndControls': textAndControls?.toJson()
      };
}

/// Json path:
/// ```
/// response.properties.scheduledOrdering
/// ```
class ScheduledOrdering {
  // response.properties.scheduledOrdering#bufferTime
  final int bufferTime;
  // response.properties.scheduledOrdering#errorText
  final String errorText;
  // response.properties.scheduledOrdering#headerText
  final String headerText;
  // response.properties.scheduledOrdering#intervalTime
  final int intervalTime;

  ScheduledOrdering(
      {this.bufferTime, this.errorText, this.headerText, this.intervalTime});

  ScheduledOrdering.fromJson(Map<String, dynamic> json)
      : bufferTime = json['bufferTime'],
        errorText = json['errorText'],
        headerText = json['headerText'],
        intervalTime = json['intervalTime'];

  Map<String, dynamic> toJson() => {
        'bufferTime': bufferTime,
        'errorText': errorText,
        'headerText': headerText,
        'intervalTime': intervalTime
      };
}

/// Json path:
/// ```
/// response.properties
/// ```
class Properties1 {
  // response.properties#scheduledOrdering
  final ScheduledOrdering scheduledOrdering;

  Properties1({this.scheduledOrdering});

  Properties1.fromJson(Map<String, dynamic> json)
      : scheduledOrdering =
            ScheduledOrdering.fromJson(json['scheduledOrdering'] ?? {});

  Map<String, dynamic> toJson() =>
      {'scheduledOrdering': scheduledOrdering?.toJson()};
}

/// Url: https://ondemand.rit.edu/api/config
/// Method: GET
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#id
  final String id;
  // response#tenantID
  final String tenantID;
  // response#contextID
  final String contextID;
  // response#groupName
  final String groupName;
  // response#domainGroupType
  final String domainGroupType;
  // response#domain
  final String domain;
  // response#storeList
  final List<StoreList> storeList;
  // response#showOperationTimes
  final bool showOperationTimes;
  // response#siteAuth
  final SiteAuth siteAuth;
  // response#theme
  final Theme theme;
  // response#updateTime
  final String updateTime;
  // response#configurationIncompleteMessages
  final List<dynamic> configurationIncompleteMessages;
  // response#properties
  final Properties1 properties;
  // response#isConfigurationComplete
  final bool isConfigurationComplete;
  // response#tenantId
  final String tenantId;
  // response#enabledLocation
  final bool enabledLocation;

  Response(
      {this.id,
      this.tenantID,
      this.contextID,
      this.groupName,
      this.domainGroupType,
      this.domain,
      this.storeList,
      this.showOperationTimes,
      this.siteAuth,
      this.theme,
      this.updateTime,
      this.configurationIncompleteMessages,
      this.properties,
      this.isConfigurationComplete,
      this.tenantId,
      this.enabledLocation,
      Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : id = json['id'],
        tenantID = json['tenantID'],
        contextID = json['contextID'],
        groupName = json['groupName'],
        domainGroupType = json['domainGroupType'],
        domain = json['domain'],
        storeList = (json['storeList'] as List)
            ?.map((e) => StoreList.fromJson(e ?? {}))
            ?.toList(),
        showOperationTimes = json['showOperationTimes'],
        siteAuth = SiteAuth.fromJson(json['siteAuth'] ?? {}),
        theme = Theme.fromJson(json['theme'] ?? {}),
        updateTime = json['updateTime'],
        configurationIncompleteMessages =
            json['configurationIncompleteMessages'],
        properties = Properties1.fromJson(json['properties'] ?? {}),
        isConfigurationComplete = json['isConfigurationComplete'],
        tenantId = json['tenantId'],
        enabledLocation = json['enabledLocation'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'id': id,
        'tenantID': tenantID,
        'contextID': contextID,
        'groupName': groupName,
        'domainGroupType': domainGroupType,
        'domain': domain,
        'storeList': storeList?.map((e) => e?.toJson())?.toList(),
        'showOperationTimes': showOperationTimes,
        'siteAuth': siteAuth?.toJson(),
        'theme': theme?.toJson(),
        'updateTime': updateTime,
        'configurationIncompleteMessages': configurationIncompleteMessages,
        'properties': properties?.toJson(),
        'isConfigurationComplete': isConfigurationComplete,
        'tenantId': tenantId,
        'enabledLocation': enabledLocation
      };
}

