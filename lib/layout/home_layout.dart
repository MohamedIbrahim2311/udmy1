import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_picker_widget/time_picker_widget.dart';
import 'package:udmy1/modules/Login/Login_screen.dart';
import 'package:udmy1/modules/modules.archived_tasks/archived_tasks.dart';
import 'package:udmy1/modules/modules.done_tasks/done_tasks.dart';
import 'package:udmy1/modules/modules.new_tasks/new_tasks.dart';

import '../shared/components/components.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  TimeOfDay timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void  _date(){
  // showTimePicker(
  // context: context,
  // initialTime:timeOfDay,
  //
  //
  // ).then(( value) => {
  //   timeController.text=value!.format(context),
  // print (value.format(context)),
  // });
   late String selectedTimePredicate ;
    showCustomTimePicker(
        context: context,
        // It is a must if you provide selectableTimePredicate
        onFailValidation: (context) => print('Unavailable selection'),
        initialTime: TimeOfDay(hour: 2, minute: 0),
        selectableTimePredicate: (time) =>
        time!.hour > 1 &&
            time!.hour < 14 &&
            time!.minute % 10 == 0).then((time) =>
        setState(() => selectedTimePredicate = time!.format(context)));
  }

  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    doneTasksScreen(),
    archivedTasksScreen()
  ];

  late Database ?database;
  var scaffoldkey =GlobalKey<ScaffoldState>();
  bool isshowBottomSheet=false;
  IconData fabicon=Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:  scaffoldkey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text(
          'TOdo APP',
        ),
      ),
      body: screens[currentIndex],
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          if(isshowBottomSheet) {
            Navigator.pop(context);
            isshowBottomSheet=false;
            setState(() {
              fabicon=Icons.edit  ;
            });
          }
          else{
            scaffoldkey.currentState?.showBottomSheet(
                  (context) => Container(
                    color: Colors.grey[300],padding: EdgeInsets.all(20.0 ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultFormField(
                          controller:titleController
                          , type:TextInputType.text ,

                        validate: (String?value ) {
                            if(value!.isEmpty){

                              return'tile must not be empty';
                            }
                              return null;
                        },
                       lable: 'Task title',
                        prefixIcon:Icons.title,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          defaultFormField(
                            controller:timeController
                            , type:TextInputType.datetime ,

                            validate: (String?value ) {
                              if(value!.isEmpty){

                                return'tile must not be empty';
                              }
                              return null;
                            },
                            lable: 'Task Time',
                            prefixIcon:Icons.watch_later_outlined,
                          )
                        ],
                      ),
                    ),
                  ),
            );
            isshowBottomSheet=true;
            setState(() {
              fabicon=Icons.add;
            });
          }


        },
        child: Icon(fabicon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 27.0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: ' New Tasks'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
              ),
              label: ' Done'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive_outlined,
              ),
              label: ' Arhived '),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return 'mohamed Ibrahim';
  }

  Future<void> createDatabase() async {
    database = await openDatabase(
      'todo',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT,date TEXT, time TEXT, status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error when creating table ${error.toString()}');
        });
      },
      onOpen: (database) {
        print('database opened');
      },
    );
    setState(() {
      this.database = database;
    });
  }


  void insertToDatabase() {
    database!.transaction((txn) async {
      txn.rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("first task","025455","86","new")',)
          .then((value) {
        print('$value inserted successfully');
      }).catchError((error) {
        print('Error when inserting new record ${error.toString()}');
      });
    });
  }

}
