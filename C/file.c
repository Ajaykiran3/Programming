#include<stdio.h>
int main(){
    FILE *fptr;
    fptr = fopen("D:\\Programming\\C\\File\\harivp.txt","w");
    fprintf(fptr,"Hii Sai Bava");
    fprintf(fptr,"HELLO Sai Bava");
    FILE *fptr1;
    fptr1 = fopen("D:\\Programming\\C\\File\\harivp.txt","r");
    fprintf(fptr1,"Hii Sai Bava");
    return 0;
}
