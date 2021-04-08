import 'package:ondemand/account_inquiry.dart' as _account_inquiry;
import 'package:ondemand/get_kitchens.dart' as _get_kitchens;
import 'package:ondemand/login.dart' as _login;
import 'package:ondemand/ondemand.dart';

// The UID to make the inquiry to
const UID = 'my-uid';

/// Creates headers with the given token
Map<String, String> headers(String accessToken) => {
      'access-token': accessToken,
      'authorization': accessToken,
    };

Future<void> main(List<String> args) async {
  // Create the OnDemand request handler object
  var onDemand = OnDemand(siteNumber: SITE_NUMBER);

  // Anonymously log in
  var res = await onDemand.login(_login.Request());
  var accessToken = res.headers['access-token'];

  // Fetch the kitchens available in the store
  var siteRequest = await onDemand
      .getKitchens(_get_kitchens.Request(headers: headers(accessToken)));

  // Just get the first kitchen, as a terminal ID is required
  var firstKitchen = siteRequest.kitchens.first;

  // Get the terminal ID
  var terminalId = firstKitchen.displayOptions.onDemandTerminalId;

  // Get the context ID
  var contextId = firstKitchen.kitchenSettings.kitchenContextId;
  print('Using terminal: ${firstKitchen.name}');
  print('Context ID: $contextId');
  print('Terminal ID: $terminalId\n');

  // Check the account balance
  await makeInquiry(onDemand, accessToken, contextId, terminalId, UID);
}

/// Makes an account balance inquiry with the given [uid].
/// [accessToken] is retrieved from an anonymous login, [contextId] is the
/// context of a terminal, and [terminalId] is the ID of the same terminal.
/// [uid] is the University ID of the account to inquiry.
Future<void> makeInquiry(OnDemand onDemand, String accessToken,
    String contextId, String terminalId, String uid) async {
  // Make the request (multiple inquiries may be made at once, for example
  // dining dollars and tiger bucks)
  var inquiry =
      await onDemand.accountInquiry(_account_inquiry.Request(inquiries: [
    _account_inquiry.Inquiry(
      // The constant ID of the tender dining dollars
      tenderId: TenderIds.DINING_DOLLARS,
      data: _account_inquiry.Data(
        tenantId: onDemand.siteNumber,
        contextId: contextId,
        // Another (different) constant ID for dining dollars
        tenderId: TenderIds.DINING_DOLLARS_DATA,
        // The terminal the quest is being made to (what terminal doesn't matter)
        atriumTerminal: _account_inquiry.AtriumTerminal(terminalId: terminalId),
        // Who this request is being made for
        customer: _account_inquiry.Customer(
          customerType: CUSTOMER_TYPE_UID,
          id: uid,
        ),
      ),
    ),
  ], headers: headers(accessToken)));

  // List over the inquiries made (only one in this case)
  for (var inq in inquiry.inquiries) {
    print('Tender: ${TenderIds.TENDERS[inq.tenderId]}:');
    print('  Remaining: ${inq.amount.remaining} ${inq.amount.currency}');

    print('\n  Individual accounts:');
    for (var account in inq.accounts) {
      print('  ${account.name}: ${account.balance} ${account.currency}');
    }
  }
}
