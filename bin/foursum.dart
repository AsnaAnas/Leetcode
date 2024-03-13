void foursum()
{
  List<int> nums=[1,0,-1,0,-2,2];
  int target=0;
 int length=nums.length;
  nums.sort();
 final quadruplets=<List<int>>[];
  for (var i = 0; i < nums.length - 2; i++) {
    // Skip duplicates for the first element
    if (i > 0 && nums[i] == nums[i - 1]) 
    {
       continue;
    }
    

    for (var j = i + 1; j < nums. length - 1; j++) 
    {
      // Skip duplicates for the second element
      if (j > i + 1 && nums[j] == nums[j - 1]) 
      {
        continue;
      }
      var left = j + 1;
      var right = length - 1;

      while (left < right) 
      {
        int sum = nums[i] + nums[j] + nums[left] + nums[right];

        if (sum == target) {
          quadruplets.add([nums[i], nums[j], nums[left], nums[right]]);
          left++;

          // Skip duplicates for the third element
          while (left < right && nums[left] == nums[left - 1]) {
             left++;
          }
         
        } else if (sum < target) {
          right--;
        } else {
          left++;
        }
      }
    }
  }
  print(quadruplets);
}
