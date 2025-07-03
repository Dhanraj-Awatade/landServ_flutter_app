import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class ServicePage extends StatefulWidget {
  final String serviceTitle;

  const ServicePage({super.key, required this.serviceTitle});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {};

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Form submitted: $_formData');
      // TODO: Send to backend
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.serviceTitle)),
      // backgroundColor:
      //     MyColors.secondary, //ToDo: Make dynamically primary for dark mode
      body: Padding(
        padding: CustomSizes.safetyPadding,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: CustomSizes.defaultSpace),
              // ..._buildFields(),

              // DropD Generator
              DropdownMenu(
                label: Text(
                  "DropDown Menu",
                ),
                hintText: "Select a value",
                enableSearch: true,
                enableFilter: true,
                width: double.infinity,
                menuStyle: MenuStyle(
                  elevation:
                      WidgetStatePropertyAll(CustomSizes.buttonElevation),
                  shadowColor: WidgetStatePropertyAll(MyColors.tertiary),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: CustomSizes.maxCircularBorderRadius,
                    ),
                  ),
                ),
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: 'Hehe'),
                  DropdownMenuEntry(value: 2, label: 'Hihi'),
                  DropdownMenuEntry(value: 3, label: 'Hoho'),
                ],
              ),
              SizedBox(height: CustomSizes.defaultSpace),

              // Text Form Generator

              SizedBox(height: CustomSizes.defaultSpace),
              ElevatedButton(
                  onPressed: _submitForm, child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}

  // List<Widget> _buildFields() {
  //   switch (widget.serviceTitle.toLowerCase()) {
  //     case '7/12':
  //       return [
  //         _buildTextField('Survey Number'),
  //         _buildTextField('District'),
  //         _buildTextField('Taluka'),
  //       ];
  //     case 'ferfar':
  //       return [
  //         _buildTextField('Transaction ID'),
  //         _buildTextField('Buyer Name'),
  //       ];
  //     default:
  //       return [_buildTextField('Description')];
  //   }
  // }

  // Widget _buildTextField(String label) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: TextFormField(
  //       decoration:
  //           InputDecoration(labelText: label, border: OutlineInputBorder()),
  //       onSaved: (value) => _formData[label] = value,
  //       validator: (value) => value!.isEmpty ? 'Enter $label' : null,
  //     ),
  //   );
  // }

//-----------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mahareal_flutter_app/components/appbar.dart';
// import 'package:mahareal_flutter_app/components/custom_dropdown_form_button.dart';
// import 'package:mahareal_flutter_app/components/custom_text_form_field.dart';
// import 'package:mahareal_flutter_app/components/primary_elevated_button.dart';
// import 'package:mahareal_flutter_app/configs/constants/colors.dart';
// import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

// final formProvider = StateProvider<FormData>((ref) => FormData());

// class FormData {
//   String fullName = '';
//   String mobileNumber = '';
//   String email = '';
//   String address = '';
//   String surveyNumber = '';
//   String villageName = '';
//   String taluka = '';
//   String district = '';
//   String landArea = '';
//   String documentType = '';
//   XFile? aadhaarCard;
//   XFile? addressProof;
//   XFile? landDocument;
//   String paymentMode = '';
//   String remarks = '';
//   bool consent = false;
//   bool isLoading = false;
// }

// class ServicePage extends ConsumerWidget {
//   final _formKey = GlobalKey<FormState>();
//   final ImagePicker _picker = ImagePicker();
//   final String title;
//   ServicePage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final formData = ref.watch(formProvider);

//     Future<void> submitForm() async {
//       if (_formKey.currentState!.validate() && formData.consent) {
//         ref.read(formProvider.notifier).update((state) => state..isLoading = true);

// // Simulate an API call
//         await Future.delayed(const Duration(seconds: 2));

//         ref.read(formProvider.notifier).update((state) => state..isLoading = false);

//         if (!context.mounted) return;
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Form Submitted Successfully')));
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fill all required fields')));
//       }
//     }

//     return Scaffold(
//       appBar: myAppBar(title, context),
//       body: Padding(
//         padding: CustomSizes.safetyPadding,
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CustomTextFormField(
//                   label: 'Full Name',
//                   hint: "Enter your full legal name",
//                   onChanged: (value) => formData.fullName = value,
//                   validator: (value) => value!.isEmpty ? 'Please enter your name' : null,
//                 ),
//                 CustomTextFormField(
//                   label: 'Mobile Number',
//                   hint: "Enter your mobile number",
//                   onChanged: (value) => formData.mobileNumber = value,
//                   validator: (value) => value!.length != 10 ? 'Enter a valid 10-digit number' : null,
//                 ),
//                 CustomTextFormField(
//                   hint: 'Enter your email address',
//                   label: 'Email (Optional)',
//                   onChanged: (value) => formData.email = value,
//                 ),
//                 CustomTextFormField(
//                   hint: 'Enter your address',
//                   label: 'Address',
//                   maxLines: 3,
//                   onChanged: (value) => formData.address = value,
//                 ),
//                 CustomTextFormField(
//                   hint: 'Enter the survey number',
//                   label: 'Survey Number',
//                   onChanged: (value) => formData.surveyNumber = value,
//                 ),
//                 CustomTextFormField(
//                   hint: 'Enter the village name',
//                   label: 'Village Name',
//                   onChanged: (value) => formData.villageName = value,
//                 ),
//                 CustomDropdownFormButton(
//                   label: 'Taluka',
//                   items: ['Taluka 1', 'Taluka 2'],
//                   onChanged: (value) => formData.taluka = value ?? '',
//                 ),
//                 CustomDropdownFormButton(
//                   label: 'District',
//                   items: ['District 1', 'District 2'],
//                   onChanged: (value) => formData.district = value ?? '',
//                 ),
//                 PrimaryElevatedButton(
//                   onPressed: () async {
//                     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//                     ref.read(formProvider.notifier).update((state) => state..aadhaarCard = pickedFile);
//                   },
//                   isGradient: false,
//                   textChild: 'Upload Aadhaar Card',
//                 ),
//                 PrimaryElevatedButton(
//                   onPressed: () async {
//                     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//                     ref.read(formProvider.notifier).update((state) => state..addressProof = pickedFile);
//                   },
//                   isGradient: false,
//                   textChild: 'Upload Address Proof',
//                 ),
//                 PrimaryElevatedButton(
//                   onPressed: () async {
//                     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//                     ref.read(formProvider.notifier).update((state) => state..landDocument = pickedFile);
//                   },
//                   isGradient: false,
//                   textChild: 'Upload Land Document (Optional)',
//                 ),
//                 CustomDropdownFormButton(
//                   label: 'Payment Mode',
//                   items: ['UPI', 'Net Banking', 'Credit/Debit Card'],
//                   onChanged: (value) => formData.paymentMode = value ?? '',
//                 ),
//                 CheckboxListTile(
//                   title: const Text("I confirm that the information provided is accurate."),
//                   value: formData.consent,
//                   onChanged: (value) =>
//                       ref.read(formProvider.notifier).update((state) => state..consent = value ?? false),
//                 ),
//                 formData.isLoading
//                     ? const CircularProgressIndicator()
//                     : PrimaryElevatedButton(
//                         isGradient: false,
//                         onPressed: submitForm,
//                         textChild: 'Submit',
//                       ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
