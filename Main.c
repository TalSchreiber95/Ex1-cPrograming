#include <stdio.h>
#include "basicMath.c"
#include "power.c"
int main(){
printf("Please enter a number:");
double value=0;
double userScan;
scanf("%lf",&userScan);
int userScanCast=(int)userScan;
value= sub(add(Exponent(userScanCast),power(userScan,3)),(float)2);// e^[x]+x^3-2
printf("the value of f(x)=e^x+x^3-2 at the point %.4lf is: %.4lf\n",userScan,value);
value =add(mul(userScan,3),mul(power(userScan,2),2)); //3x+2x^2
printf("the value of f(x)=3x+2x^2 at the point %.4lf is: %.4lf\n",userScan,value);
value=sub(div(mul(power(userScan,3),4),5),mul(userScan,2));//(4x^3)/5-2x
printf("the value of f(x)=(4x^3)/5-2x at the point %.4lf is: %.4lf\n" ,userScan,value);
return 0;
}