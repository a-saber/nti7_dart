abstract class Animal{
  String? name;
  Animal(this.name);

  void makeSound();
  void display(){
    print('Animal Name: $name');
  }
}
class Cat implements Animal{
  Cat(this.name);

  @override
  void makeSound(){
    print('Mew');
  }

  @override
  String? name;

  @override
  void display() {
    print('object');
    // super.display();
  }
}
abstract class WildAnimal extends Animal{
  WildAnimal(super.name);
}

class Tiger extends WildAnimal{
  Tiger(super.name);

  @override
  void makeSound(){
    print('Roar');
  }
}

void testSound(Animal a1){
  a1.makeSound();
}

int testx(){
  return 10;
}





abstract class Person{
  String? name;
  int? age;

  Person(this.name, this.age);

  test();
  display(){
    print('name: $name');
    print('age: $age');
  }



}

class Employee extends Person{

  String? department;
  Employee(this.department, super.name, super.age);

  @override
  test(){
    print('test as Employee');
  }

  @override
  display(){
    print('department: $department');
    super.display();
  }
}
class Engineer extends Employee{
  int? code;
  Engineer(this.code, super.department, super.name, super.age);

  // @override
  // test(){
  //   print('test as Employee');
  // }
  //
  // @override
  // display(){
  //   super.display();
  //   print('code: $code');
  // }
}


class Shape{

  double? width;
  double? height;

  Shape(this.width, this.height);

  void display(){
    print('width: $width');
    print('height: $height');
  }
}

void test(Person p1){
  p1.display();
}
void main(){

  // Person p1 = Person('Mo', 30);
  // p1.display();

  print('-------------------');
  // Employee e1 = Employee( "IT", "ahmed", 20);
  // e1.display();

  print('-------------------');

  Engineer e2 = Engineer(10, "IT", "ahmed", 20);
  e2.display();

  print('-------------------');

  test(e2);

  // Shape s1 = Shape(10, 20);
  // test(s1);

  // Animal a1 = Animal('cat');
  Cat c1 = Cat('kitty');
  testSound(c1);

  Tiger t1 = Tiger('Tiger 01');
  testSound(t1);
  testSound(Tiger('Tiger 01'));
}



/*
# Employee
- name
- age
- salary
- makeBonus(): salary * 1.15

# Junior
- name
- age
- salary
- juniorLevel : int
- makeBonus(): salary * 1.25

# Senior
- name
- age
- salary
- seniorLevel : int
- makeBonus(): salary * 1.5


  activateBonus(Employee e1){
    e1.makeBonus();
  }
 */