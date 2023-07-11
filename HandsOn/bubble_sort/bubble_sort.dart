void bubbleSort(List<int> numbers, int array_size) {
  int i, j, temp;

  for (i = 0; i < (array_size - 1); i++) {
    for (j = (array_size - 1); j > i; j--) {
      if (numbers[j - 1] > numbers[j]) {
        temp = numbers[j - 1];
        numbers[j - 1] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
}
