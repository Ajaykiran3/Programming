#include <stdio.h>
int main(){
    int a;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    a>0?printf("%d is Positive",a):(a==0)?printf("The Number is 0"):printf("%d is negative",a);
    return 0;
}