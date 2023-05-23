// Here is Question
// https://leetcode.com/problems/top-k-frequent-elements/


// import 'dart:collection';

// PriorityQueue is not define???
// https://stackoverflow.com/questions/67818209/how-to-implement-priority-queue-in-dart
// https://api.flutter.dev/flutter/package-collection_collection/PriorityQueue-class.html


// List<int> topKFrequent(List<int> nums, int k) {
//   // Count the frequency of each number
//   final frequencyMap = <int, int>{};
//   for (final num in nums) {
//     frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
//   }

//   // Create a priority queue to store the top k frequent elements
//   final queue = PriorityQueue<MapEntry<int, int>>(
//     (a, b) => b.value.compareTo(a.value),
//   );

//   // Add elements to the priority queue
//   for (final entry in frequencyMap.entries) {
//     queue.add(entry);
//     if (queue.length > k) {
//       queue.removeLast();
//     }
//   }

//   // Extract the top k frequent elements from the priority queue
//   final result = <int>[];
//   while (queue.isNotEmpty) {
//     result.add(queue.removeFirst().key);
//   }

//   return result;
// }

// void main() {
//   final nums = [1, 1, 1, 2, 2, 3];
//   final k = 2;
//   final topK = topKFrequent(nums, k);
//   print(topK); // Output: [1, 2]
// }
