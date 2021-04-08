import 'base.dart';

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getRevenueCategory
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
/// response.response
/// ```
class Category {
  // response.response#revenueCategoryId
  final String revenueCategoryId;
  // response.response#name
  final String name;
  // response.response#primaryTaxCode
  final String primaryTaxCode;
  // response.response#isTenderRestricted
  final bool isTenderRestricted;
  // response.response#id
  final String id;
  // response.response#tenantId
  final String tenantId;
  // response.response#contextId
  final String contextId;

  Category(
      {this.revenueCategoryId,
      this.name,
      this.primaryTaxCode,
      this.isTenderRestricted,
      this.id,
      this.tenantId,
      this.contextId});

  Category.fromJson(Map<String, dynamic> json)
      : revenueCategoryId = json['revenueCategoryId'],
        name = json['name'],
        primaryTaxCode = json['primaryTaxCode'],
        isTenderRestricted = json['isTenderRestricted'],
        id = json['id'],
        tenantId = json['tenantId'],
        contextId = json['contextId'];

  Map<String, dynamic> toJson() => {
        'revenueCategoryId': revenueCategoryId,
        'name': name,
        'primaryTaxCode': primaryTaxCode,
        'isTenderRestricted': isTenderRestricted,
        'id': id,
        'tenantId': tenantId,
        'contextId': contextId
      };
}

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getRevenueCategory
/// Method: GET
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Category> categories;

  Response({this.categories, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : categories =
            (json as List)?.map((e) => Category.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => categories?.map((e) => e?.toJson())?.toList();
}
