class LoginInfoPostBody {
  final String userId;
  final String password;

  const LoginInfoPostBody({
    required this.userId,
    required this.password
  });

  Map<String, dynamic> toJson() {
    return {
      'email': userId,
      'password': password
    };
  }
}

class Token {
  final String token;

  const Token({
    required this.token
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(token: json['token']);
  }
}