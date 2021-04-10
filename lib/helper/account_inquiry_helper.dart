import 'package:ondemand/account_inquiry.dart' as _account_inquiry;
import 'package:ondemand/ondemand.dart';

/// Makes an account balance inquiry with the given [uid].
/// [contextId] is a context ID, and [terminalId] is the ID of the same terminal.
/// [uid] is the University ID of the account to inquiry.
/// [tenders] is the list of [TenderId] to request. By default, this is simply
/// [TenderId.DINING_DOLLARS]
Future<List<_account_inquiry.InquiryResponse>> makeInquiry(
    OnDemand onDemand, String contextId, String terminalId, String uid, [List<TenderId> tenders = const [TenderId.DINING_DOLLARS]]) async {
  // Make the request (multiple inquiries may be made at once, for example
  // dining dollars and tiger bucks)
  var inquiry = await onDemand.accountInquiry(_account_inquiry.Request(inquiries: [
    for (var tender in tenders)
      _account_inquiry.Inquiry(
        // The constant ID of the tender dining dollars
        tenderId: tender.tenderId,
        data: _account_inquiry.Data(
          tenantId: onDemand.siteNumber,
          contextId: contextId,
          // Another (different) constant ID for dining dollars
          tenderId: tender.dataId,
          // The terminal the quest is being made to (what terminal doesn't matter)
          atriumTerminal: AtriumTerminal(terminalId: terminalId),
          // Who this request is being made for
          customer: Customer(
            customerType: CUSTOMER_TYPE_UID,
            id: uid,
          ),
        ),
      ),
  ]));
  return inquiry.inquiries;
}
