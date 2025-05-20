#include <stdio.h>
int main(){
    int a,b,c;
    float avg;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("Enter the value of b : ");
    scanf("%d",&b);
    printf("Enter the Value of c : ");
    scanf("%d",&c);
    avg = (a+b+c)/3;
    printf("The Avg of %d,%d and %d is %.2f",a,b,c,avg);
    return 0;
}