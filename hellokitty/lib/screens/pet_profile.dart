import 'package:flutter/material.dart';
import '../components/custom_appbar.dart';
import '../components/path_config.dart';

class PetProfile extends StatelessWidget {
  const PetProfile({super.key});
  final String title = "Pet Profile";
  final bool hasCat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Pet Profile",
        iconPath: IconPath.customOptions[0][1],
        backgroudColor: Colors.black,
        height: 40,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "No cat records here. Please add one",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.black),
                    child: const Text(
                      'Add a Cat',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              title: Text('Pet Profile'),
                              content: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          icon: Icon(Icons.fitbit_rounded),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Age',
                                          icon: Icon(
                                              Icons.insert_emoticon_rounded),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Gender',
                                          icon: Icon(Icons.transgender_rounded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                    child: Text("Submit"),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[800]),
                                    onPressed: () {
                                      // request add cat API
                                      Navigator.pop(context);
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              scrollable: true,
                                              title: Text('Set Target weight'),
                                              content: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "The recommended healthy weight is 4kg-5.5kg",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors
                                                              .grey.shade800),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Form(
                                                      child: Column(
                                                        children: <Widget>[
                                                          TextFormField(
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Input Target Weight',
                                                              icon: Icon(Icons
                                                                  .fitbit_rounded),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    child: Text("Submit"),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .grey[800]),
                                                    onPressed: () {
                                                      // request add cat API
                                                      Navigator.pop(context);
                                                    })
                                              ],
                                            );
                                          });
                                    })
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
