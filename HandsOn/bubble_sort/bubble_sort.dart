void BubbleSort(List<int> data) {
  // 配列の要素数を代入
  int dataCount = data.length;

  // 並び替え処理
  // 配列の要素数だけ入れ替えを実施
  for (int i = 0; i < dataCount - 1; i++) {
    // data[i]の値を決める処理
    // 配列の一番最後の要素(dataCount -1)を起点にして並び替えを実施
    for (int j = dataCount - 1; j > i; j--) {
      // data[j]とdata[j-1]の値の入替え
      if (data[j] < data[j - 1]) {
        int temp = data[j];
        data[j] = data[j - 1];
        data[j - 1] = temp;
      }
    }
  }
}

void main() {
  List<int> data = [8, 5, 4, 9, 3];

  // バブルソート
  BubbleSort(data);

  // 結果出力
  for (int i = 0; i < data.length; ++i) print(data[i]);
}
