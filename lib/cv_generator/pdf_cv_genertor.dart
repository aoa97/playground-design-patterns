import 'cv_generator_base.dart';
import 'dummy_class_models.dart';

final class PdfCvGenertor extends CVGenerator {
  @override
  AnalyzedData analyzeData(Data data) {
    print("SPECIFIC ANALYSIS STEP FOR PDF FILE");
    return AnalyzedData(data);
  }
}
