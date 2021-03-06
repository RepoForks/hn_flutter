import 'package:flutter/material.dart';
import 'package:flutter_flux/flutter_flux.dart';

import 'package:hn_flutter/sdk/stores/ui_store.dart';

class SettingsPage extends StoreWatcher {
  SettingsPage ({
    Key key
  }) : super(key: key);

  @override
  void initStores(ListenToStore listenToStore) {
    listenToStore(uiStoreToken);
  }

  @override
  Widget build(BuildContext context, Map<StoreToken, Store> stores) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Settings'),
        actions: <Widget>[],
      ),
      body: const Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Center(
          child: const Text('Settings…'),
        ),
      )
    );
  }
}
