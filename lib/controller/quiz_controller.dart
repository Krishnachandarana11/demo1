import 'package:get/get.dart';
import '../models/quiz_model.dart';
import '../service/api_service.dart';

class QuizController extends GetxController {
  var questions = <Question>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchQuiz();
    super.onInit();
  }

  void fetchQuiz() async {
    try {
      isLoading(true);
      questions.value = await ApiService().fetchQuestions();
    } finally {
      isLoading(false);
    }
  }
}
