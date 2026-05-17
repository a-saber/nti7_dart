import 'dart:math';

void main() {
  // DataType variableName = value;
  int x = 5;
  int x2 = 10;
  int z = (x / x2).round();
  double y = 10.4;
  double sumAsDouble = x + y;
  int sumAsInt = sumAsDouble.ceil();
  print(sumAsInt);

  print(y.isNegative);

  // String name = "ahmed \"welcome\" ";
  String name = "ahmed";

  print(name[0]);
  print(name.contains('e', 2));
  print(name.indexOf('y', 3));
  print(name.replaceAll('az', 'ed'));

  bool cond1 = false;
  bool cond2 = true;

  print(!(cond2 && cond1));

  if (!(cond2 && cond1)) {
    print('hello 1');
  } else {
    print('hello 2');
  }

  int age = 40;
  if (age <= 15) {
    print('child');
  } else if (age <= 35) {
    print('adult');
  } else {
    print('Old Man');
  }
  // 100 : 85 => A
  // 85 : 70 => B
  // 70 : 50 => C
  // 50 : 0 => F

  int grade = 100;

  if (grade <= 100 && grade >= 85) {
    print('A');
    if (true) {
      print('nested if');
    } else {}
  } else if (grade >= 70) {
    print('B');
  } else if (grade >= 50) {
    print('C');
  } else {
    print('F');
  }

  for (int i = 10; i >= 0; i--) {
    print(i);
  }

  // int i=0;
  // while(i<=10){
  //   print(i);
  //   i++;
  // }

  List<int> l1 = [1, 2, 3, 1];
  l1.add(4);
  l1.addAll([5, 6]);
  print(l1);
  print(l1.removeAt(0));
  print(l1.remove(60));
  // l1.contains(element)
  print(l1);

  // List user = ['1', 'ahmed', 20];
  var m = {
    'id': 1,
    'name': 'ahmed',
    'age': 20,
    'subjects': ['math', 'science']
  };
  print(m.containsKey('isMale'));
  print(m['name']);
  m.addAll({'lastName': 'Saber', 'isMale': true, 'age': 25});
  print(m.containsKey('isMale'));
  print(m.containsValue(25));

  m['Name'] = 'Mohamed';
  (m['subjects'] as List).add('art');
  print(m.remove('id'));
  print(m);
  for(var element in m.entries) {
    print('key: ${element.key}, value: ${element.value}');
  }
  m.entries.forEach((element){
    print('key: ${element.key}, value: ${element.value}');
  });

  List<Map<String, dynamic>> students = [
    {
      'id': 1,
      'name': 'ahmed',
      'age': 20,
    },
    {
      'id': 2,
      'name': 'mohamed',
      'age': 25,
    },
    {
      'id': 3,
      'name': 'ali',
      'age': 30,
    },
  ];

  int sum = 0;
  // for(int i =0; i<students.length; i++){
  //   sum += students[i]['age'] as int;
  // }

  // students.forEach((element){
  //   sum += element['age'] as int;
  // });

  for(var element in students){
    sum += element['age'] as int;
  }


  double average = sum/students.length;
  print(average);


  List<int> l3 = [1, 2, 3, 1];
  l3.forEach(ac);

  List<String> newList = l3.map<String>(mapper).toList();
  print(newList);

  List<int> prices = [10, 20, 30, 40, 50];
  List<String> pricesWithUnits = prices.map<String>(convertToUnits).toList();
  print(pricesWithUnits);
}
String convertToUnits(int price){
  return '$price EGP';
}
// int Function(int)
String mapper(int x1){
  return 'new value: ${x1 * 2}';
}
// void Function(int) action
void ac(int x1){
  print(x1);
}
/*

# product #3
 - name
 - price
 - quantity


 average of prices
 average of quantities


 */
