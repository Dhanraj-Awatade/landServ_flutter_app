import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mahareal_flutter_app/state_management/states/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController();
});

class LoginController extends StateNotifier<LoginState> {
  LoginController() : super(LoginState());

  Future<bool> login(String username, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final response = await http.post(
        Uri.parse(
            'https://mahareal-backend-92125196338.asia-south1.run.app/api/auth/login'), // Replace with your actual API
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        final token = responseData['token']; // Adjust if the key differs
        if (token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('jwt_token', token);
        }
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        final error = jsonDecode(response.body);
        state = state.copyWith(
            isLoading: false, errorMessage: error['message'] ?? 'Login failed');
        return false;
      }
    } catch (e) {
      state = state.copyWith(
          isLoading: false, errorMessage: 'Something went wrong, $e');
      return false;
    }
  }
}
