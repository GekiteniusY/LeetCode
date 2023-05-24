// Here is Question
// https://leetcode.com/problems/kth-largest-element-in-a-stream/

// このコードだと時間制限をクリアできない

class KthLargest {
  late int k;
  late List<int> numbers;

  KthLargest(int k, List<int> nums) {
    this.k = k;
    this.numbers = nums;
  }

  int add(int val) {
    numbers.add(val);
    numbers.sort((a, b) => b.compareTo(a));
    return numbers[k - 1];
  }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * KthLargest obj = KthLargest(k, nums);
 * int param1 = obj.add(val);
 */