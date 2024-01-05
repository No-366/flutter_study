void main(){
  // set -> 중복을 허용하지 않는 컬렉션
  // var로 선언하면 Set<dynamic>으로 선언된다. 또는 Set<datatype>으로 지정하여 선언할 수 있다.
  Set<int> set = {1,2,3,4,5,6,7,8,9,10};
  Set<int> set2 = {1,2,3,4,5,6,7,8,9,10,10,10,10,10};
  print(set); // {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
  print(set2); // {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

  // set은 중복을 허용하지 않기 때문에 중복된 값을 넣어도 한번만 추가�
}