import 'encapsulation.dart';
void main(){

  Book b1 = Book(title: 'A');
  b1.price = -50;
  // print(b1.setPrice(-50));
  // print(b1.setPrice(150));
  b1.display();
  print('${b1.getPrice()} \$');
  print('${b1.price} \$');

  // User u1 = User(1, 'ahmed');
  // u1.display();
  //
  // User u2 = User.asEmployee('Mohamed');
  // u2.display();
  //
  // Map<String, dynamic> userAsMap = {
  //   'id': 4,
  //   'name': 'Ali'
  // };
  // User u3 = User(userAsMap['id'], userAsMap['name']);
  // u3.display();
  // User u4 = User.fromMap(userAsMap);
  // u4.display();
}

class User{
  int? id;
  String? name;

  User(this.id, this.name);
  User.asEmployee(this.name){
    id = 3;
  }
  User.fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
  }
  void display(){
    print('id: $id');
    print('name: $name');
  }
}