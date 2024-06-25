import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

const List<String> list = <String>['Crédito', 'Pix', 'Dinheiro'];

class _PagamentoState extends State<Pagamento> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text(
        'Método:',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      DropdownButton(
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Método de pagamento alterado!'),
            action: SnackBarAction(
              label: 'Ok!',
              onPressed: () {},
            ),
          ));

          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )
    ]);
  }
}
