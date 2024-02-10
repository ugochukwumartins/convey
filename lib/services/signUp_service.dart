import 'dart:convert';
import 'package:envoymachaant/helper/helper.dart';
import 'package:envoymachaant/services/http_response.dart';
import 'package:envoymachaant/services/http_urls.dart';
import 'package:http/http.dart' as http;

Future<dynamic> addAccountRequest() async {
  try {
    final Map<String, String> _requestData = {
      "MerchantType": "0",
      "ContactName": "John Doe",
      "FirstName": "John",
      "LastName": "Doe",
      "CompanyName": "ABC Inc",
      "PhoneNumber": "123-456-7890",
      "Address": "123 Main St",
      "LicensePlate": "ABC123",
      "Email": "john.doe@example.com",
      "Password": "secretpassword"
    };

    printWrapped(jsonEncode(_requestData));

    final apiUrl = HTTPUrlConstants.signupUrl;
    print(apiUrl);
    http.Response response = await http.post(
      Uri.parse(HTTPUrlConstants.loginUrl),
      body: jsonEncode(_requestData),
      headers: {"Content-Type": "application/json", 'Authorization': "${auth}"},

//      headers: {"Content-Type": "application/json"},
    );

    HttpResponseMessage.statusCode = response.statusCode;

    var Response = json.decode(response.body);

    printWrapped("Res ${Response}");

    printWrapped("Res ${Response['success']}");

    if (!Response['success']) {
      HttpResponseMessage.message = Response['message'];

      return false;
    }

    HttpResponseMessage.message = Response['message'];

    return true;
  } catch (e) {
    print(e);
    HttpResponseMessage.message =
        "Sorry, this transaction cannot be processed at this time. Please try again";

    return false;
  }
}
