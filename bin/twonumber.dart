void list()
{
 List<int> nums=[2,7,11,15];
 int target=9;
List<int> ans =[0,0];
        int n = nums.length;
        
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                if (nums[j] == target- nums[i]) {
                    ans[0]=i;
                    ans[1] = j;
                   
                }
            }
}
print(ans);
}
 
 