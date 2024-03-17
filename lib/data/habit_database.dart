import 'package:habit_tracker/datetime/date_time.dart';
import 'package:hive_flutter/hive_flutter.dart';

//reference our box
final _myBox = Hive.box('Habit_Database');

class HabitDatabase {

  List todaysHabitList = [

  ];

  //create initial default data
  void createDefaultData() {
    todaysHabitList = [
      ["Run", false],
      ["Read", false],
    ];

  }

  //load data if it already exists
  void loadData() {

    //if its new day, get habit list from database
    if (_myBox.get(todaysDateFormatted()) == null ) {
      todaysHabitList = _myBox.get("CURRENT_HABIT_LIST");
      //set all habits to false because its a new day
      for (int i = 0; i < todaysHabitList.length; i++) {
        todaysHabitList[i][1] = false;

      }
    }
    //if its not a new day, load todays lists
     else {
      todaysHabitList = _myBox.get(todaysDateFormatted());
    }


  }

  //update database
  void updateDatabase() {
    //update todays entry
    _myBox.put(todaysDateFormatted(), todaysHabitList);

    //update universal habit list in case it changed (new habit, delete habit, edit habit)
    _myBox.put("CURRENT_HABIT_LIST", todaysHabitList);
  }

}
