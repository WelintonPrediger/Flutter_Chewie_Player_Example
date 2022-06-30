import 'package:flutter/material.dart';

class DropdownOptionsComplaint extends StatefulWidget {

  final List<String> listOptions;

  const DropdownOptionsComplaint({Key? key, required this.listOptions}) : super(key: key);

  @override
  State<DropdownOptionsComplaint> createState() => _DropdownOptionsComplaintState();
}

class _DropdownOptionsComplaintState extends State<DropdownOptionsComplaint> {
  
  String? selected;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          hintText: 'Selecione uma opção'
        ),
        items: widget.listOptions.map((String option) => DropdownMenuItem(
            value: option,
            child: Text(option)
        )).toList(),
        onChanged: (option) => selected = option.toString()
      ),
    );
  }
}
