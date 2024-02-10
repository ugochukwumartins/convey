import 'dart:convert';
import 'package:envoymachaant/helper/encrytion.dart';
import 'package:envoymachaant/helper/helper.dart';
import 'package:envoymachaant/services/http_response.dart';
import 'package:envoymachaant/services/http_urls.dart';
import 'package:http/http.dart' as http;

Future<dynamic> addAccountRequest() async {
  try {
    final Map<String, String> _requestData = {
      "EmailOrPhone":"lord@gmail.com",
      "Password":"@Lord123"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);
    final Map<String, String> _requestsent = {
      "data": encryptedText,
    };

    print(HTTPUrlConstants.loginUrl);
    http.Response response = await http.post(
      Uri.parse(HTTPUrlConstants.loginUrl),
      body: jsonEncode(_requestsent),
      headers: {"Content-Type": "application/json", 'Authorization': "${auth}"},

//      headers: {"Content-Type": "application/json"},
    );

    HttpResponseMessage.statusCode = response.statusCode;
    var res = decrypt(response.body);

    print(res);

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

Future<dynamic> ForgotPassword() async {
  try {
    final Map<String, String> _requestData = {"Email": "user@example.com"};

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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

//

Future<dynamic> SendOtpToPhone() async {
  try {
    final Map<String, String> _requestData = {"PhoneNumber": "08099889988"};

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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

//

Future<dynamic> SendOtpToEmail() async {
  try {
    final Map<String, String> _requestData = {"Email": "user@example.com"};

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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
//

Future<dynamic> NewPassword() async {
  try {
    final Map<String, String> _requestData = {
      "MerchantId": "merchant123",
      "CurrentPassword": "currentPassword123",
      "NewPassword": "newPassword456"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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
} //

Future<dynamic> ResetPassword() async {
  try {
    final Map<String, String> _requestData = {
      "Password": "newPassword123",
      "Email": "user@example.com",
      "Code": "resetCode123"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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

//
Future<dynamic> UpdateSecurityQuestions() async {
  try {
    final Map<String, String> _requestData = {
      "EmailOrPhone": "ppppp",
      "Colour": "hhhh",
      "Meal": "ppppp",
      "Pet": "uuuufff"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
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

//
Future<dynamic> UpdateServiceOffered() async {
  try {
    final Map<String, String> _requestData = {
      "EmailOrPhone": "user@example.com",
      "DeliveryService": "true",
      "EscortService": "false",
      "CaptainService": "true",
      "HiredService": "false"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
    print(apiUrl);
    http.Response response = await http.put(
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
//

Future<dynamic> UpdateCompanyDetails() async {
  try {
    final Map<String, String> _requestData = {
      "EmailOrPhone": "user@example.com",
      "Address": "123 Main St",
      "States": "State1, State2",
      "LGs": "LocalGov1, LocalGov2",
      "RegisterationNumber": "123456789",
      "ImageLogoPath": "/images/logo.png"
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
    print(apiUrl);
    http.Response response = await http.put(
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
//

Future<dynamic> AddService() async {
  try {
    final Map<String, dynamic> _requestData = {
      "EmailOrPhone": "user@example.com",
      "services": [
        {
          "ServiceType": 3,
          "InterstateTrips": true,
          "IntrastateTrips": false,
          "InterstateCost": 50.0,
          "IntrastateCost": null,
          "AverageDeliverySpeed": 30.5,
          "VehicleTypes": "Truck, Van",
          "Ports": "Port1, Port2",
          "CargoTypes": "Type1, Type2",
          "Experiencesummary": "Experienced in delivering goods",
          "LicensePlateNumbers": "ABC123, XYZ789",
          "FilePath": ""
        },
        {
          "ServiceType": 1,
          "InterstateTrips": true,
          "IntrastateTrips": false,
          "InterstateCost": 50.0,
          "IntrastateCost": null,
          "AverageDeliverySpeed": 30.5,
          "VehicleTypes": "Truck, Van",
          "Ports": "Port1, Port2",
          "CargoTypes": "Type1, Type2",
          "Experiencesummary": "Experienced in delivering goods",
          "LicensePlateNumbers": "ABC123, XYZ789",
          "FilePath": "/documents/service1.pdf"
        }
      ]
    };

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
    print(apiUrl);
    http.Response response = await http.put(
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
//
