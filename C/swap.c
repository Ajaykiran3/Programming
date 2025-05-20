#include<stdio.h>
int main(){
    int a,b,temp;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("Enter the Value of b : ");
    scanf("%d",&b);
    temp = a;
    a = b;
    b = temp;
    printf("The Value of a = %d\n",a);
    printf("The Value of b = %d\n",b);
    return 0;

}