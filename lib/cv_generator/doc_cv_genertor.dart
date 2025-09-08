import 'cv_generator_base.dart';
import 'dummy_class_models.dart';

final class DocCvGenertor extends CVGenerator {
  @override
  AnalyzedData analyzeData(Data data) {
    print("SPECIFIC ANALYSIS STEP FOR Doc FILE");
    return AnalyzedData(data);
  }
}
