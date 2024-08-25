import 'package:flutter/cupertino.dart';

import 'CustomButton.dart';
import 'CustomTextFormField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
final GlobalKey<FormState>_formKey=GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'title',
            onSaved: (value){
              title=value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
            onSaved: (value){
              subTitle=value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: (){
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();}
      else{
        autovalidateMode=AutovalidateMode.always;
        setState(() {

        });
      }
            },
          ),
         const  SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}