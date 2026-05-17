// Call By Value (int, double, String, bool)
int x = 10;

// Call By Reference (List, Map, Class)
void main(){
  // List<int> l = [10,20,30];
  // List<int> l2 = [];
  // for(var i in l){
  //   l2.add(i);
  // }
  // print(l);
  // addOne(l2);
  // print(l2);
  // print(l);
  //
  // Map m = {'id':1, 'name':'ahmed'};
  // addOne2(Map.from(m));
  // print(m);

  calculate(multiply);
}
void multiply(int l1, int l2){
  print(l1 * l2);
}

  void calculate(void Function(int x1, int x2) sum){
    print('calculate called');
    sum(10,20);
    print('calculate end');
  }

void addOne2(Map m){
  m['id'] = 10;
}
void addOne(List<int> l){
  for(int i=0; i<l.length; i++){
    l[i] = l[i] * 2;
  }
  print('in func addOne $l');
}

