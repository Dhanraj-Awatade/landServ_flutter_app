import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final formProvider = StateProvider<FormData>((ref) => FormData());

class FormData {
  String fullName = '';
  String mobileNumber = '';
  String email = '';
  String address = '';
  String surveyNumber = '';
  String villageName = '';
  String taluka = '';
  String district = '';
  String landArea = '';
  String documentType = '';
  XFile? aadhaarCard;
  XFile? addressProof;
  XFile? landDocument;
  String paymentMode = '';
  String remarks = '';
  bool consent = false;
  bool isLoading = false;
}

class LandServiceForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();

  LandServiceForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formData = ref.watch(formProvider);

    Future<void> submitForm() async {
      if (_formKey.currentState!.validate() && formData.consent) {
        ref.read(formProvider.notifier).update((state) => state..isLoading = true);

// Simulate an API call
        await Future.delayed(const Duration(seconds: 2));

        ref.read(formProvider.notifier).update((state) => state..isLoading = false);
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Form Submitted Successfully')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fill all required fields')));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Land Document'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  onChanged: (value) => formData.fullName = value,
                  validator: (value) => value!.isEmpty ? 'Please enter your name' : null,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Mobile Number'),
                  onChanged: (value) => formData.mobileNumber = value,
                  validator: (value) => value!.length != 10 ? 'Enter a valid 10-digit number' : null,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email (Optional)'),
                  onChanged: (value) => formData.email = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Address'),
                  maxLines: 3,
                  onChanged: (value) => formData.address = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Survey Number'),
                  onChanged: (value) => formData.surveyNumber = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Village Name'),
                  onChanged: (value) => formData.villageName = value,
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'Taluka'),
                  items: ['Taluka 1', 'Taluka 2'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => formData.taluka = value ?? '',
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'District'),
                  items: ['District 1', 'District 2'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => formData.district = value ?? '',
                ),
                ElevatedButton(
                  onPressed: () async {
                    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                    ref.read(formProvider.notifier).update((state) => state..aadhaarCard = pickedFile);
                  },
                  child: const Text('Upload Aadhaar Card'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                    ref.read(formProvider.notifier).update((state) => state..addressProof = pickedFile);
                  },
                  child: const Text('Upload Address Proof'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                    ref.read(formProvider.notifier).update((state) => state..landDocument = pickedFile);
                  },
                  child: const Text('Upload Land Document (Optional)'),
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'Payment Mode'),
                  items: ['UPI', 'Net Banking', 'Credit/Debit Card'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => formData.paymentMode = value ?? '',
                ),
                CheckboxListTile(
                  title: const Text("I confirm that the information provided is accurate."),
                  value: formData.consent,
                  onChanged: (value) =>
                      ref.read(formProvider.notifier).update((state) => state..consent = value ?? false),
                ),
                formData.isLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: submitForm,
                        child: const Text('Submit'),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}