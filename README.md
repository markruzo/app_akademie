# App Akademie

Ordner für Abgaben

## 5.6.1 Datenbanken

Lösungen

## Aufgabe 2

<table>
  <tr>
    <td style="text-align: center;">
      <img src="lib/task_solutions/5_6_1_Datenbanken/Simulator Screenshot - iPhone 13 mini - 2023-09-18 at 11.14.08.png" alt="Bild 1">
      <p>Datenbanken</p>
    </td>
    <td style="text-align: center;">
      <img src="lib/task_solutions/5_6_1_Datenbanken/Simulator Screenshot - iPhone 13 mini - 2023-09-18 at 11.14.16.png" alt="Bild 2">
      <p>Datenbanken</p>
    </td>
  </tr>
  </table>

## Aufgaben

### Hive:

import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late int age;
}

#### Hive:

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);


  Hive.registerAdapter(PersonAdapter());

  runApp(MyApp());
}

#### Hive:

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);


  Hive.registerAdapter(PersonAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hive Beispiel'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final box = await Hive.openBox('myBox');

            
              final person = Person()
                ..name = 'Max Mustermann'
                ..age = 30;

              await box.add(person);

              final loadedPerson = box.get(0) as Person?;
              print('Geladen: ${loadedPerson?.name}, ${loadedPerson?.age}');
            },
            child: Text('Objekt speichern und laden'),
          ),
        ),
      ),
    );
  }
}



### SQL-Datenbanken:

1. Strukturierte Daten: SQL eignet sich gut für strukturierte Daten, wie sie in Unternehmensanwendungen und relationalen Systemen häufig vorkommen.

2. Datenintegrität: SQL bietet Transaktionskontrolle und ACID-Eigenschaften (Atomicity, Consistency, Isolation, Durability) für die Gewährleistung der Datenintegrität.

3. Komplexe Abfragen: SQL ermöglicht komplexe Abfragen, Joins und Aggregationen, was in Business Intelligence und Berichterstellung wichtig ist.

4. Skalierbarkeit: SQL-Datenbanken sind für vertikale Skalierbarkeit geeignet, indem sie auf leistungsstärkere Hardware migrieren.

### NoSQL-Datenbanken:

1. Unstrukturierte Daten: NoSQL eignet sich gut für unstrukturierte oder semi-strukturierte Daten, z.B. in sozialen Medien, IoT und Logdateien.

2. Horizontale Skalierbarkeit: NoSQL-Datenbanken können leicht horizontal skaliert werden, um große Datenmengen und hohe Lasten zu bewältigen.

3. Flexibilität: NoSQL bietet flexible Schemata, die sich schnell an sich ändernde Anforderungen anpassen lassen.

4. Hohe Verfügbarkeit: NoSQL-Datenbanken sind oft auf hohe Verfügbarkeit und Ausfallsicherheit ausgelegt, wichtig für Webanwendungen.