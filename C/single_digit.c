#include<stdio.h>
int main(){
    int a;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    (a>=-9 && a<=9)?printf("%d is Single Digit Number",a):printf("%d is not a Single Digit Number",a);
    return 0;
}