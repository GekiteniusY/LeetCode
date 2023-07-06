int? binarySearch(List<int> list, int item) {
  // 検証範囲を特定する小さい方のインデックス番号
  int low = 0;
  // 検証を範囲を特定するための大きい方のインデックス番号
  int high = list.length - 1;

  while (low <= high) {
    // 二分探索の真ん中の要素インデックス
    int mid = (low + high) ~/ 2;
    // 比較対象＝検証範囲の真ん中の値
    int guess = list[mid];

    // 真ん中の要素インデックスに合致したかどうかの判定
    // インデックス番号の特定
    if (guess == item) {
      return mid;
    }

    // 比較対象が特定したい値より大きかった場合
    if (guess > item) {
      // 検証範囲を特定するための大きい方のインデックス番号を、
      // 今回の比較対象のインデックス番号に更新する
      high = mid - 1;
    } else {
      // 比較対象が特定したい値より小さかった場合は、
      // 検証範囲を特定するための小さい方のインデックス番号を、
      // 今回の比較対象のインデックス番号に更新する
      low = mid + 1;
    }
  }

  // 特定したい値がリストに含まれなかった場合はnullを返却する
  return null;
}

void main() {
  List<int> myList = [1, 3, 5, 7, 9];
  int searchItem = 3;

  int? result = binarySearch(myList, searchItem);

  if (result != null) {
    print('要素が見つかりました。インデックス： $result');
  } else {
    print('要素が見つかりませんでした。');
  }
}
