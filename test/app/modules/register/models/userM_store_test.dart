import 'package:flutter_test/flutter_test.dart';
import 'package:universop/app/modules/register/models/userM_store.dart';
 
void main() {
  late UserMStore store;

  setUpAll(() {
    store = UserMStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}