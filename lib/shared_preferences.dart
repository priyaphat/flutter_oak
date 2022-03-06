//add in onPressed
addInttoSF();

addInttoSF() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setInt('invalue',123);
  pref.setString('String','string');
  pref.setBoolean('bool',true);
}


//get shared_preferences

getInValuesSF().then((value) =>print(value));

Future<int> getInValuesSF() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int  testval = prefs.getInt('invalue');
  print(testval);
  return testval;
}

