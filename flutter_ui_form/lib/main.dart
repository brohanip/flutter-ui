import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("TextField Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyTextField()),
              );
            },
          ),
          ListTile(
            title: const Text("DropdownButton Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyDropDown()),
              );
            },
          ),
          ListTile(
            title: const Text("Switch Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MySwitch()),
              );
            },
          ),
          ListTile(
            title: const Text("Radio Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyRadio()),
              );
            },
          ),
          ListTile(
            title: const Text("Checkbox Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCheckbox()),
              );
            },
          ),
          ListTile(
            title: const Text("DatePicker Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyDatePicker()),
              );
            },
          ),
          ListTile(
            title: const Text("Dialog Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyDialog()),
              );
            },
          ),
          ListTile(
            title: const Text("BottomSheet Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyBottomSheet()),
              );
            },
          ),
          ListTile(
            title: const Text("Snackbar Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MySnackbar()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// TextField Example
class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Example"),
      ),
      body: Center(
        child: TextField(
          maxLength: 20,
          controller: textController,
          decoration: const InputDecoration(
            labelText: "Nama",
            labelStyle: TextStyle(color: Colors.blueGrey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            helperText: "Masukkan nama",
          ),
          onChanged: (value) {
            print(value);
          },
        ),
      ),
    );
  }
}

// DropdownButton Example
class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selected = "Dart";

  final List<String> dropDownList = const [
    "Dart",
    "Kotlin",
    "Java",
    "Javascript",
    "PHP",
    "Python",
    "Ruby",
    "Swift",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropdownButton Example"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Bahasa favorit: "),
          const SizedBox(width: 8),
          DropdownButton(
            value: selected,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 20,
            style: TextStyle(color: Colors.blue[600]),
            underline: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 3,
                  ),
                ),
              ),
            ),
            items: dropDownList.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (val) {
              setState(() {
                if (val != null) selected = val;
                print(selected);
              });
            },
          ),
        ],
      ),
    );
  }
}

// Switch Example
class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Example"),
      ),
      body: Row(
        children: [
          const Text("Connect Instagram"),
          Switch(
            value: isOn,
            onChanged: (bool? val) {
              if (val != null) {
                setState(() {
                  isOn = val;
                  print("Switch: $isOn");
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

// Radio Example
class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String sex = "pria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Example"),
      ),
      body: Row(
        children: [
          const Text("Jenis Kelamin: "),
          const SizedBox(width: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'pria',
                groupValue: sex,
                onChanged: (value) {
                  setState(() {
                    if (value != null) {
                      sex = value;
                      print("sex: $sex");
                    }
                  });
                },
              ),
              const Text("Pria"),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: "wanita",
                groupValue: sex,
                onChanged: (value) {
                  setState(() {
                    if (value != null) {
                      sex = value;
                      print("sex: $sex");
                    }
                  });
                },
              ),
              const Text("Wanita"),
            ],
          ),
        ],
      ),
    );
  }
}

// Checkbox Example
class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox Example"),
      ),
      body: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  isChecked = value;
                  print("setuju: $isChecked");
                }
              });
            },
          ),
          const SizedBox(width: 4),
          const Text(
            "Setuju syarat dan ketentuan.",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}

// DatePicker Example
class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker Example"),
      ),
      body: InkWell(
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2100),
          );
          setState(() {
            if (pickedDate != null) {
              dateController.text = pickedDate.toString();
            }
          });
          debugPrint("Date Picker: $pickedDate");
        },
        child: TextFormField(
          controller: dateController,
          enabled: false,
          decoration: const InputDecoration(
            labelText: "Tanggal Lahir",
            labelStyle: TextStyle(color: Colors.blueGrey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            suffixIcon: Icon(Icons.date_range),
            helperText: "Pilih tanggal lahir anda",
          ),
        ),
      ),
    );
  }
}

// Dialog Example
class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Info'),
                  content: const SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('Your order was placed.'),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Ok'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}

// BottomSheet Example
class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Your order was placed!'),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open BottomSheet'),
        ),
      ),
    );
  }
}

// Snackbar Example
class MySnackbar extends StatelessWidget {
  const MySnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.blue,
                content: Text('Your request is successful'),
              ),
            );
          },
          child: const Text('Open SnackBar'),
        ),
      ),
    );
  }
}