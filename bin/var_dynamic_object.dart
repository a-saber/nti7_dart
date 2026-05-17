void main(){
  // var
  int x1 = 5;
  // x1 = 'ahmed';
  x1.isEven;
  var y = 5;
  // y = 'mo';
  y.isEven;
  var z = "ahmed";
  z.length;
  var l = [1,2,3];
  l.add(4);

  // dynamic
  int x2 = 5;
  x2.isEven;

  dynamic x3 = 10;
  // (x3 as int).isEven;
  print(x3 + 5);
  // x3.isEvenheloo;
  x3 = 'ahmed';
  (x3 as String).length;

  x3 = 10.5;
  x3 = [1,2,3];

  // Object
  Object x4 = 10;
  print((x4 as int) + 5);
  x4 = 'ahmed';
  x4  = (x4 as String) + ' welcome';

  var k ;
  k =10;
  k = 10.5;
  k = 'ahmed';
}