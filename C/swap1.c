#include<stdio.h>
int main(){
    int a,b;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("Enter the Value of b : ");
    scanf("%d",&b);
    a=a+b;
    b=a-b;
    a=a-b;
    printf("The Value of a = %d\n",a);
    printf("The Value of b = %d\n",b);
    return 0;

}