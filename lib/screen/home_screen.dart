import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                /*
                * hovered - 마우스 커서를 올려놓은 상태
                * focused - 포커스 됐을때 (테스트 필드)
                * pressed - 눌렀을때
                * dragged - 드래그됐을때
                * selected - 선택됐을때 (체크박스, 셀렉트박스)
                * scrollUnder - 다른 컴포넌트 밑으로 들어갔을때
                * disabled - 비활성화 됐을 때 (함수에 null 넣은 경우)
                * error - 에러상태
                **/
                backgroundColor: MaterialStateProperty.all( // 모든 상황에 해당값 설정
                  Colors.black
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) { // 액션에 대한 값이 들어옴
                          if (states.contains(MaterialState.pressed)) { // 버튼 누르는 경우
                            return Colors.white;
                          }
                          return Colors.red;
                        }
                ),
                padding: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return EdgeInsets.all(50.0);
                          }
                          return EdgeInsets.all(10.0);
                          // return null; // 기본값을 의미
                        }
                ),
              ),
              child: Text('buttonStyle'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // 버튼색
                foregroundColor: Colors.yellow, // 글자색과 클릭 시 애니메이션 색상
                shadowColor: Colors.green, // 그림자 색상
                elevation: 10.0, // 그림자 사이즈?
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0), // 버튼 글자 기준 padding (좌우는 stretch로 인해 변화 X)
                side: BorderSide(
                   width: 4.0,
                  color: Colors.black,
                ),
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green, // 글자와 클릭 애니메이션 효과 색상을 바꿔줌
                backgroundColor: Colors.yellow,
                elevation: 4.0,
              ),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown, // 글자와 클릭 애니메이션 효과 색상을 바꿔줌
                backgroundColor: Colors.blue,
              ),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
