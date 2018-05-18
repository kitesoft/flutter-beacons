import 'package:flutter/material.dart';

class BeaconListItem extends StatefulWidget {

  //This is a default constructor with Darts' syntactic sugar...
  BeaconListItem(this._beaconIdentifier, this._beaconColor);

  //... and this a redirecting constructor.
  BeaconListItem.fromIdentifier(_beaconIdentifier) : this(_beaconIdentifier, "Icy Marshmallow");
  
  final String _beaconColor;
  final String _beaconIdentifier;

  @override
  State createState() => BeaconItemState(_beaconIdentifier, _beaconColor);
}

class BeaconItemState extends State<BeaconListItem> with TickerProviderStateMixin {

  BeaconItemState(this._beaconIdentifier, this._beaconColor);

  final String _beaconColor;
  final String _beaconIdentifier;
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: Icon(Icons.developer_board),
      ),
      title: Text(_beaconIdentifier),
      subtitle: Text(_beaconColor),
      trailing: Container(
        child: _isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)
      ),
      onTap: _onBeaconEntityTapped,
    );
  }

  void _onBeaconEntityTapped() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }
}