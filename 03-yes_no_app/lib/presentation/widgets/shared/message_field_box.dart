import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode(); // PARA QUE UNA VEZ QUE ESCRIBA Y DE ENTER EL TECLADO NO SE ESCONDA

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a ?',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
      icon: const Icon(Icons.send_outlined),
      onPressed: () {
        final textValue = textController.value.text;
        print('FormFieldValue: $textValue');
        textController.clear();
      }, 
      )
    );
      
    return  TextFormField(
      onTapOutside: (event) { // SI SE TOCA CON EL DEDO FUERA DEL TECLADO DEL CEL EL TECLADO SE OCULTARA
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        //print('Submited Value $value');
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //   print('OnChange Value $value');
      // },
    );
  }
}