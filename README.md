A generated wrapper library for the closed-source Agilysys OnDemand system used by RIT.

Generated by [ondemand_wrapper_gen](https://github.com/RubbaBoy/ondemand_wrapper_gen)

### Usage

In your pubspec.yml, include the following:

```
dependencies:
  ondemand:
    git: https://github.com/RubbaBoy/ondemand
```

### Examples

The least amount of code needed to start making requests:

```dart
import 'package:ondemand/ondemand.dart';

// ...

var onDemand = OnDemand(siteNumber: SITE_NUMBER);
var res = await onDemand.login(_login.Request());
// All future requests require access-token and authorization headers using this same value
var accessToken = res.headers['access-token'];
```



The following is a relatively barebones example of making an account inquiry to view balances (Source: [example/inquiry_example.dart](/example/inquiry_example.dart))

```dart
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
  var ondemand = OnDemand(siteNumber: SITE_NUMBER);

  // Anonymously log in
  var res = await ondemand.login(_login.Request());
  var accessToken = res.headers['access-token'];

  // Fetch the kitchens available in the store
  var siteRequest = await ondemand
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
  await makeInquiry(ondemand, accessToken, contextId, terminalId, UID);
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

    print('\n    Individual accounts:');
    for (var account in inq.accounts) {
      print('     ${account.name}: ${account.balance} ${account.currency}');
    }
  }
}
```

Output of this for my own account:

```
Using terminal: The Commons
Context ID: d8d37708-1aa3-49d1-913c-51dc5c7f29b6
Terminal ID: 1706

Tender: Dining Dollars:
  Remaining: 1424.87 USD
    Individual accounts:
     Dining Dollars (Meal Plan): 142487 USD
     Dining Dollars (Voluntary): 0 USD
```

