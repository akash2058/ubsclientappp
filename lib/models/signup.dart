class Signup {
  Signup({
    required this.response,
    required this.verifyuser,
  });

  String response;
  int verifyuser;

  factory Signup.fromJson(Map<String, dynamic> json) => Signup(
        response: json["response"],
        verifyuser: json["verifyuser"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "verifyuser": verifyuser,
      };
}
