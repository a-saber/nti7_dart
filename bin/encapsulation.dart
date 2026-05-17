class Book {

  String? title;
  double? _price;

  bool setPrice(double price){
    if(price>0){
      _price = price;
      return true;
    }
    return false;
  }
  // using set keyword
  set price(double price){
    if(price>0){
      _price = price;
    }
  }

  double? getPrice(){
    return _price;
  }
  // using get keyword
  double get price {
    return _price ?? 0;
  }

  Book({this.title,});
  void display(){
    print(title);
    print(_price);
  }
}

void main() {
  Book b1 = Book(title: 'Flutter');
  b1._price = -100.0;
  print(b1.title);
  print(b1._price);
}