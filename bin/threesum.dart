void threesum()
{
 
 List<int> nums=[-1,0,1,2,-1,4];
 nums.sort(); // Sort the array for efficient lookups
  List<List<int>> triplets = [];

  for (int i = 0; i < nums.length - 2; i++) {
    // Skip duplicates to avoid redundant triplets
    if (i > 0 && nums[i] == nums[i - 1]) {
      continue;
    }

    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];

      if (sum == 0) {
        triplets.add([nums[i], nums[left], nums[right]]);

        // Skip duplicates to avoid adding same triplet multiple times
        while (left < right && nums[left] == nums[left + 1]) {
          left++;
        }
        while (left < right && nums[right] == nums[right - 1]) {
          right--;
        }

        left++;
        right--;
      } else if (sum < 0) {
        left++;
      } else {
        right--;
      }
    }
  }

 print(triplets) ;

}