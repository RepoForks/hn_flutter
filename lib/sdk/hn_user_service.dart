import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' show JSON;

import 'package:hn_flutter/sdk/hn_config.dart';
import 'package:hn_flutter/sdk/models/hn_user.dart';
import 'package:hn_flutter/sdk/actions/hn_user_actions.dart';

class HNUserService {
  HNConfig _config = new HNConfig();

  Future<HNUser> getUserByID (String id) => http.get('${this._config.url}/user/$id.json')
    .then((res) => JSON.decode(res.body))
    .then((user) => new HNUser.fromMap(user))
    .then((user) {
      addHNUser(user);
    });
}
