// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_explained/views/login/login_view_model.dart';

void main() async {
  test("Login Email Validation Test", () {
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.validateEmail(null), "Please enter an email");
    expect(loginViewModel.validateEmail(""), "Please enter an email");
    expect(loginViewModel.validateEmail("helloworld"),
        "Please enter a valid email");
    expect(loginViewModel.validateEmail("helloworld@world.com"), null);
  });
  test("Login Password Validation Test", () {
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.validatePassword(null), "Please enter a password");
    expect(loginViewModel.validatePassword(""), "Please enter a password");
    expect(loginViewModel.validatePassword("12345"),
        "Password must contain at least 6 chars");
    expect(loginViewModel.validatePassword("123456"), null);
  });
}
