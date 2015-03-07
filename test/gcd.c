#include<stdio.h>

int gcd (int i, int j)
{
   while( i != j) {
      if( i > j) i -= j;
      else j -= i;
   }
   return i;
}
int main(void)
{
   gcd(3,2);
   return 0;
}
