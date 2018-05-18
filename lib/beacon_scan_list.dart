import 'package:flutter/material.dart';
import 'package:beacon_flutter/beacon_list_item.dart';
import 'package:beacon_flutter/beacon.dart';

class BeaconScanList extends StatefulWidget {
  BeaconScanList(String this._appBarTitle);

  final String _appBarTitle;

  @override
  State createState() => BeaconScanListState(_appBarTitle);
}

class BeaconScanListState extends State<BeaconScanList> {

  final List<Beacon> _foundBeaconsData = <Beacon>[];
  BeaconScanListState(String this._appBarTitle);
  final String _appBarTitle;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(_appBarTitle),
      ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            BeaconListItem.fromIdentifier(_foundBeaconsData[index].beaconIdentifier),
        itemCount: _foundBeaconsData.length
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: _addNewBeaconScanListItem,
          child: Icon(Icons.add),
      ),
    );
  }

  void _addNewBeaconScanListItem() {
    setState(() {
      _foundBeaconsData.add(Beacon("Item"));
    });
  }

}
