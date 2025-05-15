class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion({required this.text, required this.answers});

  List<String> getshuffledAnswers() {
    final shuffledResult = List.of(answers);
    shuffledResult.shuffle(); 
    // final 변수인 shuffledResult에 shuffle 을 사용해서 리스트 요소의 
    // 순서가 변하는것은 새로운 인스턴스를 참조하는것이 아니기 때문에 가능하다
    return shuffledResult;
  }
}