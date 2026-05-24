class Person{
  String? name;
  int? age;

  Person(this.name, this.age);

  display(){
    print('name: $name');
    print('age: $age');
  }

}

class Employee extends Person{

  String? department;
  Employee(this.department, super.name, super.age);

  @override
  display(){
    print('department: $department');
    super.display();
  }
}
class Engineer extends Employee{
  int? code;
  Engineer(this.code, super.department, super.name, super.age);

  @override
  display(){
    super.display();
    print('code: $code');
  }
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

  Person p1 = Person('Mo', 30);
  p1.display();

  print('-------------------');
  Employee e1 = Employee( "IT", "ahmed", 20);
  e1.display();

  print('-------------------');

  Engineer e2 = Engineer(10, "IT", "ahmed", 20);
  e2.display();

  print('-------------------');

  test(e2);

  // Shape s1 = Shape(10, 20);
  // test(s1);
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