import 'dart:io';

void reverseint()
{
  print("Enter a number");
  int n=int.parse(stdin.readLineSync()!);
  int numdig=n.toString().length;
   if(numdig>=10)
  {
    String strNum = n.toString();
    String reversed = strNum.split("").reversed.join("");
    int revnum=int.parse(reversed);
   print(revnum);
  }
  else{
       bool isNeg=n<0;
  int num=n.abs();
  int rev=0;
  int temp=n;
  while(num>0)
  {
    int rem=num%10;
    rev=rev*10+rem;
    num=num~/10;
  }
   int op=isNeg ? -rev : rev;
  print("Reverse of $temp is $op");
   }
 
}