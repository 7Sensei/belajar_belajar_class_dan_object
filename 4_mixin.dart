void main(List<String> args) {
  Sapi sapi = new Sapi();
  sapi.methodMamalia();
  sapi.methodBerkakiEmpat();
  sapi.methodSapi();
}

class Mamalia {
  void methodMamalia() {
    print('method mamalia');
  }
}

class BerkakiEmapat {
  void methodBerkakiEmpat() {
    print('method berkaki empat');
  }
}

class Sapi with Mamalia, BerkakiEmapat {
  void methodSapi() {
    print('method sapi');
  }
}
