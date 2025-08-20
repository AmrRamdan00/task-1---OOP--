abstract class Payment {
  String name;
  Payment(this.name);
  bool pay(double amount);
}

class CardPayment extends Payment {
  CardPayment() : super("Card");
  @override
  bool pay(double amount) {
    print("Paying $amount with Card...");
    return true;
  }
}

class PayPal extends Payment {
  PayPal() : super("PayPal");
  @override
  bool pay(double amount) {
    print("Paying $amount with PayPal...");
    return true;
  }
}

class Validator {
  bool check(String user, String address) {
    if (user.isEmpty || address.isEmpty) {
      print("❌ User or address is empty");
      return false;
    }
    return true;
  }
}

class Log {
  static final Log _one = Log._inside();
  Log._inside();
  factory Log() => _one;
  void write(String msg) {
    print("[LOG] $msg");
  }
}

abstract class DataSource {
  List<String> getItems();
}

class ApiSource implements DataSource {
  @override
  List<String> getItems() {
    return ["Shirt(API)", "Shoes(API)", "Watch(API)"];
  }
}

class MockSource implements DataSource {
  @override
  List<String> getItems() {
    return ["Mock Shirt", "Mock Shoes", "Mock Watch"];
  }
}

class Checkout {
  final Payment payWay;
  final Validator checkInput;
  final Log log = Log();
  final DataSource source;

  Checkout({
    required this.payWay,
    required this.checkInput,
    required this.source,
  });

  void order(String user, String address, double amount) {
    log.write("Checkout start for $user");
    if (!checkInput.check(user, address)) {
      log.write("❌ Wrong input");
      return;
    }
    var items = source.getItems();
    log.write("Items: $items");
    if (payWay.pay(amount)) {
      log.write("✅ Paid with ${payWay.name}");
      print("Order done!");
    } else {
      log.write("❌ Payment failed");
    }
  }
}

void main() {
  var validator = Validator();

  var checkout1 = Checkout(
    payWay: PayPal(),
    checkInput: validator,
    source: ApiSource(),
  );
  checkout1.order("Amr", "Cairo St.", 120.0);

  var checkout2 = Checkout(
    payWay: CardPayment(),
    checkInput: validator,
    source: MockSource(),
  );
  checkout2.order("Ali", "Alex Rd.", 200.0);
}
