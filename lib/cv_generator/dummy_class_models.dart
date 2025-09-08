class File {
  final String path;

  File(this.path) {
    // Simulate file reading
    print('Reading file from $path');
  }
}

class Data {
  final File file;

  Data(this.file) {
    // Simulate data extraction
    print('Extracting data from file at ${file.path}');
  }
}

class AnalyzedData {
  final Data data;

  AnalyzedData(this.data) {
    // Simulate data analysis
    print('Analyzing data extracted from file at ${data.file.path}');
  }
}

class Report {
  final AnalyzedData analyzedData;

  Report(this.analyzedData) {
    // Simulate report generation
    print('Generating report based on analyzed data from file at ${analyzedData.data.file.path}');
  }
}
