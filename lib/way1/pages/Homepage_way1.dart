import 'package:file_system_demo/way1/utils/file_utils.dart';
import 'package:flutter/material.dart';

class Homepage_way1 extends StatefulWidget {
  const Homepage_way1({Key? key}) : super(key: key);

  @override
  _Homepage_way1State createState() => _Homepage_way1State();
}

class _Homepage_way1State extends State<Homepage_way1> {

  TextEditingController controller=TextEditingController();

  String fileContents='No Data';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    readFromFile();
  }

  void readFromFile(){
    FileUtils.readToFile().then((contents){
      setState(() {
        fileContents=contents;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter File System'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller:controller ,
              decoration: InputDecoration(
                hintText: 'Enter text'
              ),
            ),
            SizedBox(height: 12,),
            RaisedButton(
                onPressed: (){
                  FileUtils.saveToFile(controller.text);
                  controller.clear();
                },
              child: Text('Save To File'),
            ),
            SizedBox(height: 12,),
            RaisedButton(
              onPressed: (){
                readFromFile();
              },
              child: Text('Read To File'),
            ),
            SizedBox(height: 32,),
            Text(fileContents,style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
