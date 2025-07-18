String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return "Email is required.";
  }

  RegExp regex = RegExp(r'\w+@\w+\.\w+');

  if (!regex.hasMatch(email)) {
    return "Invalid Email format.";
  }
  return null;
}

String? validatePassword(String? pass) {
  if (pass == null || pass.isEmpty) {
    return "Password is required.";
  }

  RegExp regExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  if (pass.length < 8) {
    return "Password must be at least 8 characters.";
  }

  if (!regExp.hasMatch(pass)) {
    return "Password must contain an uppercase letter, number and symbol.";
  }
  return null;
}
