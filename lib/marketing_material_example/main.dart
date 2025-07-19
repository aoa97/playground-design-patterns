import 'brochure.dart';
import 'poster.dart';

main() {
  final brocure1 = Brochure(
    content: 'Brochure content',
    layout: 'Brochure layout',
    color: 'Brochure color',
  );

  final brocure2 = brocure1.clone();
  brocure2.color = 'New brochure color';

  print(brocure1);
  print(brocure2);

  final poster1 = Poster(
    content: 'Poster content',
    layout: 'Poster layout',
    color: 'Poster color',
  );

  //* Poster isn't cloneable
  //! final poster2 = poster1.clone();
  // poster2.color = 'New poster color';
}
