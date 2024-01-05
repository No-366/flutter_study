//positional argument (위치에 따라 매개변수를 지정) 대신 named argument(매개변수의 이름을 지정)을 사용할 수 있다.
 //name argument
 //널 값을 방지하기 위한 두가지 선택지
 //함수 선언 후 => (fat arrow)를 사용하여 반화값을 지정할 수 있다. ex) int add(int a, int b) => a + b; (별다른 내용이 없을 때 사용)
 String sayhello({String name = 'x', int age = 0,} ) => 'Hello $name, $age'; // 함수의 매개변수에 기본값을 지정할 수 있다. -> 매개변수를 입력하지 않아도 기본값이 출력된다.
 String saybye({required String name, int age = 0,} ) => 'Bye $name, $age'; // required 키워드를 사용하면 매개변수를 필수로 입력해야 한다. -> 매개변수를 입력하지 않으면 에러가 발생한다.

 //?? 연산자(QQ연산자) -> null일 때 기본값을 지정할 수 있다.
 String capitalizeName(String? name){
    if(name != null){
      return name.toUpperCase();
    }
    return 'ANON';
  }// 문자열을 대문자로 변환_ 방법 1
 String capitalizeName2(String? name) => name != null ? name.toUpperCase() : 'ANON'; // 문자열을 대문자로 변환_ 방법 2
  String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON'; // 문자열을 대문자로 변환 _ 방법 3 // ?? 연산자(QQ연산자) 좌항이 null이면 우항을 실행한다.

void main(){

   print(sayhello(
      name: '니꼬',
      age: 27,
   ));

   String? name;
   name ??= 'x'; // name이 null이면 'x'를 할당한다. -> ??= 연산자를 사용하면 null일 때 기본값을 지정할 수 있다.
   name = null;
   name ??='y';
}