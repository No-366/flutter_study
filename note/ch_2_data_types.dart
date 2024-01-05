void main() {
  // 모든것이 클래스를 구현하는 객체이기 때문에 내부적으로 메서드와 프로퍼티를 가지고 있다.
  String name = '니꼬';
  String nickname = "니꼬";
  bool alive = true;
  int age = 27;
  double height = 177.5; //int와 double은 num을 상속받는다.

  num age2 = 27;
  age2 = 27.5;

  //collection if -> 조건에 따라 컬렉션을 생성할 수 있다.
  List<String> names = [
    '니꼬',
    '코딩',
    if (alive) '안녕',
  ]; // alive가 true일 때만 '안녕'이 추가된다.

  //string interpolation -> 문자열 보간법 -> 문자열 안에 변수를 넣을 수 있다. -> $변수명 or ${변수명} 
  print('name: $name, age: $age, height: $height');

  //collection for -> 반복문을 통해 컬렉션을 생성할 수 있다.
  var oldfriends = [
    '니꼬',
    '코딩',
    '안녕',
  ];
  var newfriends = [
    '철수',
    '영희',
    for (var name in oldfriends) ' ** $name **',
  ];

  print(newfriends);


 

}
