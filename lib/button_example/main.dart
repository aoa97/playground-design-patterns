import 'button.dart';

main() {
  final b1 = Button(
    content: 'Submit',
    buttonData: ButtonData(
      color: 'blue',
      xPosition: 10,
      yPosition: 20,
    ),
  );

  final b2 = b1.copyWith(
    content: 'Cancel',
    buttonData: b1.buttonData.copyWith(
      color: 'red',
    ),
  );

  print(b1);
  print(b2);
}
