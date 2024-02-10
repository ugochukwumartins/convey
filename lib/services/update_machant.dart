import 'dart:convert';
import 'package:envoymachaant/helper/encrytion.dart';
import 'package:envoymachaant/helper/helper.dart';
import 'package:envoymachaant/services/http_response.dart';
import 'package:envoymachaant/services/http_urls.dart';
import 'package:http/http.dart' as http;

Future<dynamic> updateMerchantRequest() async {
  try {
    final Map<String, String> _requestData = {
      "EmailOrPhone": "user@example.com",
      "Username": "newusername",
      "Image": "base64string"
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

Future<dynamic> VerifyMerchant() async {
  try {
    final Map<String, String> _requestData = {
      "Email": "user@example.com",
      "Code": "123456"
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

Future<dynamic> MerchantById() async {
  try {
    final Map<String, String> _requestData = {"MerchantId": "merchant123"};

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

Future<dynamic> MerchantByEmail() async {
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

Future<dynamic> RemoveMerchant() async {
  try {
    final Map<String, String> _requestData = {"MerchantId": "merchant123"};

    printWrapped(jsonEncode(_requestData));
    var jsencode = jsonEncode(_requestData);
    var encryptedText = encrypt(jsencode);

    final apiUrl = HTTPUrlConstants.loginUrl;
    print(apiUrl);
    http.Response response = await http.delete(
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
