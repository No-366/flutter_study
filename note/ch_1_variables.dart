void main(){
  var name = '니꼬'; // 또는 String name = '니꼬'; -> 명시적으로 타입을 지정해줄 수도 있다.
  name = '1';
  //name = 1  -> error
  //관습적으로 함수나 메소드 내부에 지역 변수를 선언할 떄에는 var을 사용한다.
  //class에서 변수나 property를 선언할 때에는 String name = '니꼬'; 와 같이 명시적으로 타입을 지정해준다.

  var nickname; // 타입을 지정하지 않으면 dynamic으로 선언된다.-> 만능 변수
  print(nickname); // null => 초기화를 하지 않았음에도 사용할 수 있다. [late 키워드를 사용할 경우 초기화를 하지 않으면 에러가 발생한다. 널값을 방지하는 관점에서 null safety 기능과 비슷하다.]
  nickname = '니꼬';
  nickname = 1;
  //dynamic은 타입이 정해지지 않았기 때문에 어떤 타입이든 할당할 수 있다.

  if(name is String){
    print('name is String');
  }


  // null safety
  // null safety는 null을 허용하지 않는다.
  // null safety를 사용하면 변수를 선언할 때 null을 허용하는지 허용하지 않는지를 명시해야 한다. -> 런타임 에러를 방지할 수 있다.
  // null을 허용하려면 변수의 자료형에 ?를 붙여준다.
  // 해당 변수를 사용할 때에는 null인지 아닌지를 체크해줘야 한다. 
  // if(name != null) { name.isNotEmpty; } 또는 짧게 name?.isNotEmpty;로 사용할 수 있다.
  String? name2 = '니꼬';
  name2 = null;
  String name3 = '니꼬';
  //name3 = null; -> error // null safety 작동


  //수정 할 수 없는 변수 선언 -> final, const
  //final은 한번 할당하면 변경할 수 없다. 런타임 시점에 결정되는 변수를 할당할 수 있다. ex) api 호출 결과, 함수의 반환값, 랜덤값, 입력값 등
  //const는 컴파일 시점에 결정되어 변경할 수 없다. -> const는 반드시 선언과 동시에 초기화를 해야 한다. -> const는 컴파일 시점에 결정되어야 하기 때문에 런타임 시점에 결정되는 변수를 할당할 수 없다. ex) api 호출 결과, 함수의 반환값, 랜덤값, 입력값 등
  final String name4 = '니꼬';

  //late 키워드
  //late는 변수를 선언할 때 초기화를 하지 않아도 된다. (초기 데이터 없이 변수 선언 가능). 단, 변수를 사용하기 전에 초기화를 해야 한다.
  //다이내믹 선언과 late 선언의 차이점은 late는 변수를 사용하기 전에 초기화를 해야 한다는 것이다.
  //late는 null safety를 사용할 수 없다.
  late String name5;
  name5 = '니꼬';
}