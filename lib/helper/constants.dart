const SITE_NUMBER = '1312';
const PRICE_LEVEL = '1';
const CURRENCY = 'USD';

const CUSTOMER_TYPE_UID = 'campusid';

class TenderId {
  static const TIGER_BUCKS = TenderId('Tiger Bucks', '9', '1');
  static const DINING_DOLLARS = TenderId('Dining Dollars', '16', '4');

  static const values = [TIGER_BUCKS, DINING_DOLLARS];

  final String name;
  final String tenderId;
  final String dataId;

  const TenderId(this.name, this.tenderId, this.dataId);

  static TenderId getTender(String id) =>
      values.firstWhere((element) => element.tenderId == id, orElse: () => null);
}
