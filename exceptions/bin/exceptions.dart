class InvalidPhoneNumberException implements Exception {}

bool ValidatePhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 10) {
    return true;
  } else {
    throw InvalidPhoneNumberException();
  }
}

void main(List<String> arguments) {
  try {
    ValidatePhoneNumber("123");
  } on InvalidPhoneNumberException {
    print('Invalid phone number');
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
