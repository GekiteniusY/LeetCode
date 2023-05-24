// Here is Question
// https://leetcode.com/problems/kth-largest-element-in-a-stream/

// made by ChatGPT
// このアプローチは、K番目の最大値を常に把握するため、新しい要素の追加時に配列の全体をソートする必要がなくなります。その結果、時間制限をクリアできるはずです。
// siftUp メソッドと siftDown メソッドの比較演算子が逆転し、最小ヒープとなります。したがって、heap[0] は常に K 番目に大きい値となります。add メソッド内での条件式も修正され、
// val が最小ヒープの最小値（heap[0]）より大きい場合にのみ更新が行われるようになります。
// これにより、add メソッドは K 番目に大きい数を返すようになります。

class KthLargest {
  late int k;
  late List<int> heap;

  KthLargest(int k, List<int> nums) {
    this.k = k;
    heap = [];
    for (int num in nums) {
      add(num);
    }
  }

  int add(int val) {
    if (heap.length < k) {
      heap.add(val);
      siftUp(heap.length - 1);
    } else if (val > heap[0]) {
      heap[0] = val;
      siftDown(0);
    }
    return heap[0];
  }

  void siftUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[parentIndex] > heap[index]) {
        swap(parentIndex, index);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  void siftDown(int index) {
    int n = heap.length;
    while (index < n) {
      int leftChild = 2 * index + 1;
      int rightChild = 2 * index + 2;
      int smallest = index;

      if (leftChild < n && heap[leftChild] < heap[smallest]) {
        smallest = leftChild;
      }
      if (rightChild < n && heap[rightChild] < heap[smallest]) {
        smallest = rightChild;
      }

      if (smallest != index) {
        swap(smallest, index);
        index = smallest;
      } else {
        break;
      }
    }
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * KthLargest obj = KthLargest(k, nums);
 * int param1 = obj.add(val);
 */