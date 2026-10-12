void manageShoppingList() {
  List<String> shoppingList = ['Կաթ', 'Հաց', 'Պանիր'];

  shoppingList.add('Ձու');

  shoppingList.insert(1, 'Կարագ');

  shoppingList.removeAt(3);

  shoppingList[0] = 'Թթվասեր';

  if (shoppingList.isNotEmpty) {
    String firstItem = shoppingList.first; // կամ shoppingList[0]
    String lastItem = shoppingList.last;   // կամ shoppingList[shoppingList.length - 1]
    print('Առաջին ապրանք: $firstItem');
    print('Վերջին ապրանք: $lastItem');
  }

  bool isEmpty = shoppingList.isEmpty;
  print('Ցուցակը դատարկ է: $isEmpty');

  print('Վերջնական ցուցակ: $shoppingList');
}
