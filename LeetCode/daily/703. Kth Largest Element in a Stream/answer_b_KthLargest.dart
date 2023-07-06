// Here is Question
// https://leetcode.com/problems/kth-largest-element-in-a-stream/

// 他の人の解法
// https://leetcode.com/problems/kth-largest-element-in-a-stream/solutions/3556791/dart-simple-solution-easy-to-understand/

class KthLargest {
  var _k = 0;
  var _nums = <int>[];

  KthLargest(int k, List<int> nums) {
    _k = k;
    nums.sort((a, b) => b.compareTo(a));
    _nums = nums.take(_k).toList();
  }

  int add(int val) {
    var flag = _nums.length < _k;
    if (flag || val > _nums.last) {
      if (flag) {
        _nums
          ..add(val)
          ..sort((a, b) => b.compareTo(a));
      } else {
        _nums
          ..insert(_nums.indexWhere((e) => val > e), val)
          ..removeLast();
      }
    }
    return _nums.last;
  }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * KthLargest obj = KthLargest(k, nums);
 * int param1 = obj.add(val);
 */