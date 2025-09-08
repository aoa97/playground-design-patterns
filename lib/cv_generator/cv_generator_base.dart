import 'package:meta/meta.dart';

import 'dummy_class_models.dart';

abstract base class CVGenerator {
  @protected
  @nonVirtual
  File readingFile(String path) {
    return File(path);
  }

  @protected
  @nonVirtual
  Data extractData(File file) {
    return Data(file);
  }

  @protected
  AnalyzedData analyzeData(Data data);

  @protected
  @nonVirtual
  Report generateReportOf(AnalyzedData analyzedData) {
    return Report(analyzedData);
  }

  @nonVirtual
  Report generateCvReport(String path) {
    final file = readingFile(path);
    final data = extractData(file);
    final analyzedData = analyzeData(data);
    return generateReportOf(analyzedData);
  }
}
