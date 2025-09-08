import 'cv_generator_base.dart';
import 'dummy_class_models.dart';

final class ImageCvGenertor extends CVGenerator {
  @override
  AnalyzedData analyzeData(Data data) {
    print("SPECIFIC ANALYSIS STEP FOR Image FILE");
    return AnalyzedData(data);
  }
}
