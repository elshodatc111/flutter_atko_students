class User {
  final String email;
  final String password;
  final String token;

  User({
    required this.email,
    required this.password,
    required this.token,
  });

  Map<String, dynamic> toJson(){
    return{
      'email':email,
      'password':password,
      'token':token,
    };
  }
}
