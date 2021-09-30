import 'package:form_field_validator/form_field_validator.dart';


final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=,*?[#?!@$%^&*-])',
      errorText: 'password mut not contain any special character')
]);
