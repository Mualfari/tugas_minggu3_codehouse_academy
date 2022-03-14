import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nama = TextEditingController();
  TextEditingController kelas = TextEditingController();
  TextEditingController jurusan = TextEditingController();

  TextEditingController namaEdit = TextEditingController();
  TextEditingController kelasEdit = TextEditingController();
  TextEditingController jurusanEdit = TextEditingController();

  List<Map<String, dynamic>> persons = [
    {
      'nama': 'Muhammad Ali Faatikh Riziq',
      'kelas': '12.2A.35',
      'jurusan': 'Sistem Informasi',
    }
  ];
  String number = "1";
  void formEdit(int index, Map<String, dynamic> person) {
    namaEdit.text = person["nama"];
    kelasEdit.text = person["kelas"];
    jurusanEdit.text = person["jurusan"];
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Edit Mahasiswa"),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: namaEdit,
                  decoration: InputDecoration(label: Text("Nama")),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  controller: kelasEdit,
                  decoration: InputDecoration(label: Text("Kelas")),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  controller: jurusanEdit,
                  decoration: InputDecoration(label: Text("Jurusan")),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    String nameT = namaEdit.text;
                    String kelasT = kelasEdit.text;
                    String jurusanT = jurusanEdit.text;

                    persons[index]["name"] = nameT;
                    persons[index]["kelas"] = kelasT;
                    persons[index]["jurusan"] = jurusanT;
                    namaEdit.text = "";
                    kelasEdit.text = "";
                    kelasEdit.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: Text("Edit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Batal"))
            ],
          );
        });
  }

  void formAdd() {
    int nomor = int.parse(number);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Add Mahasiswa $nomor"),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: nama,
                  decoration: InputDecoration(label: Text("Nama")),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  controller: kelas,
                  decoration: InputDecoration(label: Text("Kelas")),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  controller: jurusan,
                  decoration: InputDecoration(label: Text("Jurusan")),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    String nameText = nama.text;
                    String kelasText = kelas.text;
                    String jurusanText = jurusan.text;

                    persons.add({
                      "nama": nameText,
                      "kelas": kelasText,
                      "jurusan": jurusanText
                    });
                    nama.text = "";
                    kelas.text = "";
                    jurusan.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Batal"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: formAdd,
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: persons.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  persons[index]['nama'],
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  persons[index]['kelas'],
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  persons[index]['jurusan'],
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        formEdit(index, persons[index]);
                      },
                      child: Icon(
                        Icons.edit_note_outlined,
                        color: Colors.green,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          persons.removeAt(index);
                        });
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
