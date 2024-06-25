import 'package:flutter/material.dart';

class CEP extends StatefulWidget {
  const CEP({super.key});

  @override
  State<CEP> createState() => _CEPState();
}

class _CEPState extends State<CEP> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            Text('CEP:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: '99999-999', border: OutlineInputBorder()),
              ),
            ),
            Text('Rua:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Rua', border: OutlineInputBorder()),
              ),
            ),
            Text('Número:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Número', border: OutlineInputBorder()),
              ),
            ),
            Text('Bairro:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Bairro', border: OutlineInputBorder()),
              ),
            ),
            Text('Cidade:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Cidade', border: OutlineInputBorder()),
              ),
            ),
            Text('Estado:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Estado', border: OutlineInputBorder()),
              ),
            ),
          ],
        )
      ],
    );
  }
}
