int findSmallest(List<int> arr) {
  int smallest = arr[0];
  int smallestIndex = 0;
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

List<int> selectionSort(List<int> arr) {
  List<int> sortedArr = List.filled(arr.length, 0);
  for (int i = 0; i < arr.length; i++) {
    int smallestIndex = findSmallest(arr);
    sortedArr[i] = arr[smallestIndex];
    arr[smallestIndex] = double.infinity.toInt();
  }
  return sortedArr;
}
