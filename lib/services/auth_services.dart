class AuthServices {
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  Future<bool> register(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  Future<bool> logout() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}
