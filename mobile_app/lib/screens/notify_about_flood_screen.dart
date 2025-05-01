import 'package:flutter/material.dart';

class notifyAboutFloodScreen extends StatefulWidget {
  const notifyAboutFloodScreen({super.key});

  @override
  _notifyAboutFloodScreenState createState() => _notifyAboutFloodScreenState();
}

class _notifyAboutFloodScreenState extends State<notifyAboutFloodScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();

  // Variables to hold selected date and time
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  // Function to select date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime initialDate = _selectedDate ?? DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = "${_selectedDate!.toLocal()}".split(' ')[0]; // Format as YYYY-MM-DD
      });
    }
  }

  // Function to select time
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay initialTime = _selectedTime ?? TimeOfDay.now();
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
        _timeController.text = _selectedTime!.format(context); // Format as HH:mm AM/PM
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify About Floods'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 3, 23, 134),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.warning_amber_rounded, size: 80, color: Colors.orange),
                const SizedBox(height: 20),
                const Text(
                  'Alert authorities about rising water levels!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Your Name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _addressController,
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _areaController,
                        decoration: const InputDecoration(
                          labelText: 'Area Affected',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the affected area';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      // Date Picker
                      TextFormField(
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Date of Occurrence',
                          border: OutlineInputBorder(),
                        ),
                        readOnly: true,
                        onTap: () => _selectDate(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select the date';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      // Time Picker
                      TextFormField(
                        controller: _timeController,
                        decoration: const InputDecoration(
                          labelText: 'Time of Occurrence',
                          border: OutlineInputBorder(),
                        ),
                        readOnly: true,
                        onTap: () => _selectTime(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select the time';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
              ), 
                          backgroundColor: const Color.fromARGB(255, 3, 23, 134),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // TODO: Send the notification to authorities
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Flood Notification Sent')),
                            );
                          }
                        },
                        
                        child: const Text('Send Flood Notification',
                            style: TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
