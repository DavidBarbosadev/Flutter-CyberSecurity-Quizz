import 'main.dart';
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('CIA triad stands for Confidentiality, Integrity, and Availability', true),
    Question('Intrusion Detection System (IDS) detects the intrusion and also takes actions to prevent the intrusion ?', false),
    Question('Encrypted data can be converted back to original data by the process of decryption', true),
    Question('Hashed data cannot be converted back to original data', true),
    Question('Traceroute is a tool that shows the path of a packet', true),
    Question('Penetration Testing is the process of finding vulnerabilities on the target.', true),
    Question('VPN stands for Virtual Public Network', false),
    Question('Data Leakage is an intentional or unintentional transmission of data from within the organization to an external unauthorized destination.', true),
    Question('Black hat hackers use their powers for good deeds and so they are also called Ethical Hackers.', false),
    Question('Port Scanning is the technique used to identify open ports and service available on a host', true),
    Question('Grey hat hackers are an amalgamation of a white hat and black hat hacker. ', true),
    Question('A MITM(Man-in-the-Middle) attack is a type of attack where the hacker places himself in between the communication of two parties and steal the information.', true),
    Question('XSS(Cross-Site Scripting) is a cyberattack that enables hackers to inject malicious client-side scripts into web pages. ', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber == _questionBank.length-1){
      print("Fim");
      return true;
    }else{
      quizBrain.nextQuestion();
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}
