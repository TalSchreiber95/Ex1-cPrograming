#include <stdio.h>
#include "myMath.h"
#define EXPON 2.71828182846

double Exponent(int x){
    double ret=1;
    for(int i =0 ; i<x;i++){
        ret=ret*EXPON;
    }
    return ret;
}
double power(double y,int x){
      double ret=1;
    for(int i =0 ; i<x;i++){
        ret=ret*y;
    }
    return ret;
}