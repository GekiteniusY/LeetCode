// Here is Question
// https://leetcode.com/problems/top-k-frequent-elements/

List<int> topKFrequent(List<int> nums, int k) {
  // Count the frequency of each number
  final frequencyMap = <int, int>{};
  for (final num in nums) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }

  // Create a list of unique numbers
  final uniqueNums = frequencyMap.keys.toList();

  // Sort the unique numbers based on their frequencies
  uniqueNums.sort((a, b) => frequencyMap[b]!.compareTo(frequencyMap[a]!));

  // Extract the top k frequent elements
  return uniqueNums.sublist(0, k);
}

void main() {
  final nums = [1, 1, 1, 2, 2, 3];
  final k = 2;
  final topK = topKFrequent(nums, k);
  print(topK); // Output: [1, 2]
}
