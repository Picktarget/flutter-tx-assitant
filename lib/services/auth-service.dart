import 'dart:async';

class AuthService {
  // Login
  Future<bool> login() async {
    // Simulate a future for response after 2 second.
    // new Random().nextBool()
    return await new Future<bool>.delayed(
      new Duration(
        seconds: 2
      ), () => true
    );
  }

  // Logout
  Future<void> logout() async {
    // Simulate a future for response after 1 second.
    return await new Future<void>.delayed(
      new Duration(
        seconds: 1
      )
    );
  }
}