List<int> findPair(List<int> numbers, int target) {
  Map<int, int> numMap = {}; 

  for (int i = 0; i < numbers.length; i++) {
    int complement = target - numbers[i];
    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }
    numMap[numbers[i]] = i;
  }
  return []; 
}
