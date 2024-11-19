// import 'dart:convert';
//
// import 'package:apitest/model/login.dart';
// import 'package:apitest/model/user.dart';
// import 'package:apitest/util/server_info.dart';
// import 'package:http/http.dart' as http;
//
// class HttpNetwork {
//   final serverInfo = ServerInfo();
//
//   Future<List<User>> login(Login login) async {
//     print(login.toJson());
//     List<User> users = [];
//
//     final response = await http.post(
//       serverInfo.accountLogin(),
//       body: json.encode(login),
//       headers: serverInfo.headers,
//     );
//     final statusCode = response.statusCode;
//     final body = utf8.decode(response.bodyBytes);
//     final jsonBody = jsonDecode(body);
//
//     print(
//         "code: ${response.statusCode}, body: ${utf8.decode(response.bodyBytes)}");
//     if (statusCode == 200) {
//       if (jsonBody['resultCd'] == "100") {
//         print(jsonBody['resultMsg']);
//         users = jsonBody['data'].map<User>((data) {
//           return User.fromJson(data);
//         }).toList();
//       }
//     }
//     print(jsonBody['resultCd']);
//     return users;
//   }
// }
