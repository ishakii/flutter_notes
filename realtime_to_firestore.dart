import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart';

class RealtimeToFirestore extends StatelessWidget {
  const RealtimeToFirestore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text("Başlat"),
          onPressed: _transfer,
        ),
      ),
    );
  }

  _transfer() async {
    print("Taşıma başladı");
    try {
      // get from rt
      String collectionName = "suggestions"; // modeli de değiştirmeyi unutma
      final DatabaseReference ref = database().ref(collectionName);

      final QueryEvent q = await ref.once("value");

      Map<String, dynamic> mAll =
          await q.snapshot.val() as Map<String, dynamic>;
      List list =
          mAll.entries.map((e) => SuggestionModel.fromMap(e.value)).toList();

      // upload fs
      CollectionReference newRef =
          FirebaseFirestore.instance.collection(collectionName);

      print("$collectionName sayısı: " + list.length.toString());
      for (var item in list) {
        if (item.isActive != false) {
          await newRef.doc(item.key).set(item.toMap());
        }
      }
      print("Taşıma Başarılı");
    } catch (e) {
      print("Bir hata oluştu: $e");
    }
  }
}
