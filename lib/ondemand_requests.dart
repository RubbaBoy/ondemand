import 'base.dart';
import 'get_config.dart' as _get_config;
import 'get_items.dart' as _get_items;
import 'login.dart' as _login;
import 'get_kitchens.dart' as _get_kitchens;
import 'get_manifest.dart' as _get_manifest;
import 'decrypt_cookie.dart' as _decrypt_cookie;
import 'get_leads.dart' as _get_leads;
import 'list_places.dart' as _list_places;
import 'get_menus.dart' as _get_menus;
import 'get_item.dart' as _get_item;
import 'add_cart_adv.dart' as _add_cart_adv;
import 'add_cart.dart' as _add_cart;
import 'account_inquiry.dart' as _account_inquiry;
import 'get_revenue_category.dart' as _get_revenue_category;
import 'get_tenders.dart' as _get_tenders;
import 'get_tender_info.dart' as _get_tender_info;
import 'auth_payment.dart' as _auth_payment;
import 'check_capacity.dart' as _check_capacity;
import 'create_closed_order.dart' as _create_closed_order;
import 'get_sms.dart' as _get_sms;
import 'send_sms.dart' as _send_sms;
import 'get_wait_time.dart' as _get_wait_time;

class OnDemand {
  Map<String, String> baseHeaders = {};
  _get_config.Response config;
  final String siteNumber;

  OnDemand({this.siteNumber});

  Future<_get_config.Response> getConfig(_get_config.Request request) async {
    var res = await get('https://ondemand.rit.edu/api/config', request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_config.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_items.Response> getItems(_get_items.Request request,
      {String contextId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/sites/$siteNumber/$contextId/kiosk-items/get-items',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_items.Response.fromJson(res.json(), res.headers);
  }

  Future<_login.Response> login(_login.Request request) async {
    var res = await put(
        'https://ondemand.rit.edu/api/login/anonymous/$siteNumber',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _login.Response.fromJson(res.headers);
  }

  Future<_get_kitchens.Response> getKitchens(
      _get_kitchens.Request request) async {
    var res = await get('https://ondemand.rit.edu/api/sites/$siteNumber',
        request, {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_kitchens.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_manifest.Response> getManifest(
      _get_manifest.Request request) async {
    var res = await get('https://ondemand.rit.edu/static/assets/manifest.json',
        request, {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_manifest.Response.fromJson(res.json(), res.headers);
  }

  Future<_decrypt_cookie.Response> decryptCookie(
      _decrypt_cookie.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/userProfile/decryptSamlCookie',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _decrypt_cookie.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_leads.Response> getLeads(_get_leads.Request request,
      {String contextId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/sites/$contextId/getKitchenLeadTimeForStores',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_leads.Response.fromJson(res.json(), res.headers);
  }

  Future<_list_places.Response> listPlaces(_list_places.Request request,
      {String contextId, String displayId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/sites/$siteNumber/$contextId/concepts/$displayId',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _list_places.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_menus.Response> getMenus(_get_menus.Request request,
      {String contextId, String displayId, String placeId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/sites/$siteNumber/$contextId/concepts/$displayId/menus/$placeId',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_menus.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_item.Response> getItem(_get_item.Request request,
      {String contextId, String itemID}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/sites/$siteNumber/$contextId/kiosk-items/$itemID',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_item.Response.fromJson(res.json(), res.headers);
  }

  Future<_add_cart_adv.Response> addCartAdv(_add_cart_adv.Request request,
      {String contextId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/order/$siteNumber/$contextId/orders',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _add_cart_adv.Response.fromJson(res.json(), res.headers);
  }

  Future<_add_cart.Response> addCart(_add_cart.Request request,
      {String contextId, String orderId}) async {
    var res = await put(
        'https://ondemand.rit.edu/api/order/$siteNumber/$contextId/orders/$orderId',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _add_cart.Response.fromJson(res.json(), res.headers);
  }

  Future<_account_inquiry.Response> accountInquiry(
      _account_inquiry.Request request) async {
    var res = await post('https://ondemand.rit.edu/api/atrium/accountInquiry',
        request, {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _account_inquiry.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_revenue_category.Response> getRevenueCategory(
      _get_revenue_category.Request request,
      {String contextId}) async {
    var res = await get(
        'https://ondemand.rit.edu/api/sites/$siteNumber/$contextId/getRevenueCategory',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_revenue_category.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_tenders.Response> getTenders(_get_tenders.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/atrium/getAtriumTendersFromPaymentTypeList',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_tenders.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_tender_info.Response> getTenderInfo(
      _get_tender_info.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/order/getPaymentTenderInfo',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_tender_info.Response.fromJson(res.json(), res.headers);
  }

  Future<_auth_payment.Response> authPayment(
      _auth_payment.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/atrium/authAtriumPayment',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _auth_payment.Response.fromJson(res.json(), res.headers);
  }

  Future<_check_capacity.Response> checkCapacity(
      _check_capacity.Request request) async {
    var res = await put('https://ondemand.rit.edu/api/order/capacityCheck',
        request, {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _check_capacity.Response.fromJson(res.json(), res.headers);
  }

  Future<_create_closed_order.Response> createClosedOrder(
      _create_closed_order.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/order/createMultiPaymentClosedOrder',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _create_closed_order.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_sms.Response> getSms(_get_sms.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/communication/getSMSReceipt',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_sms.Response.fromJson(res.json(), res.headers);
  }

  Future<_send_sms.Response> sendSms(_send_sms.Request request) async {
    var res = await post(
        'https://ondemand.rit.edu/api/communication/sendSMSReceipt',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _send_sms.Response.fromJson(res.json(), res.headers);
  }

  Future<_get_wait_time.Response> getWaitTime(_get_wait_time.Request request,
      {String contextId}) async {
    var res = await post(
        'https://ondemand.rit.edu/api/order/$siteNumber/$contextId/getWaitTimeForItems',
        request,
        {...request.headers, ...baseHeaders});
    if (res.statusCode != 200) {
      return Future.error('Status ${res.statusCode}: ${res.body}');
    }

    return _get_wait_time.Response.fromJson(res.json(), res.headers);
  }
}
