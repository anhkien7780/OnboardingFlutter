final regex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
);

bool isEmailValidated(String email){
  return regex.hasMatch(email);
}