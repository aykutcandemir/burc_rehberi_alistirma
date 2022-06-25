// ignore_for_file: prefer_const_constructors

import 'package:burc_rehberi/burc_detay.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenecekBurc;
  const BurcItem({required this.listelenecekBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BurcDetay(secilenBurc: listelenecekBurc);
              }));
            },
            leading: Image.asset(
              'images/' + listelenecekBurc.burcKucukResim,
            ),
            title: Text(listelenecekBurc.burcAdi, style: myTextStyle.headline5),
            subtitle: Text(
              listelenecekBurc.burcTarihi,
              style: myTextStyle.subtitle2,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
