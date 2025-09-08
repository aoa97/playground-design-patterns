import 'cv_generator_base.dart';
import 'doc_cv_genertor.dart';
import 'image_cv_genertor.dart';
import 'pdf_cv_genertor.dart';

main() {
  final CVGenerator pdfGenerator = PdfCvGenertor();
  final pdfReport = pdfGenerator.generateCvReport('path/to/file.pdf');

  final CVGenerator docGenerator = DocCvGenertor();
  final docReport = docGenerator.generateCvReport('path/to/file.doc');

  final CVGenerator imageGenerator = ImageCvGenertor();
  final imageReport = imageGenerator.generateCvReport('path/to/file.png');
}
