#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"





int main(){

    // // ft_read
    // char e1[10] ;
    // ft_read(0, e1, 10);
    // printf("%s lenght", e1);
    // printf("%ld\n", strlen(e1));

    /// ft_strcmp
    char e2[10] = "123456789";
    char e3[10] = "123456789";
    printf("def strcmp %d mimiced one %d\n", strcmp(e2,e3) ,ft_strcmp(e2, e3));


    // ft_strcpy
    char mstring[] = "hello world";
    char *e4 = malloc(20);
    char *e5 = malloc(20);
    printf("%ld \n", strlen(mstring));
    printf("def function string [%s] \n", strcpy(e4, mstring));
    printf("mimiced function string [%s] \n", ft_strcpy(e5, mstring));
    printf("default lenght [%ld]  mimiced lenght [%ld]\n",  strlen(e4), strlen(e5));
    
    
    // ft_strdup
    char *e6 = "blend jj";
    char *dup = strdup(e6);
    char *ft_dup = ft_strdup(e6);
    printf("def function string [%s] \n", dup);
    printf("mimiced function string [%s] \n", ft_dup);
    printf("default lenght [%ld]  mimiced lenght [%ld]\n",  strlen(dup), strlen(ft_dup));
    
    // ft_strlen
     char *e7 = "123";
     int lenght  = ft_strlen(e7);
     printf("%d\n", lenght);
    
    // ft_read
    ft_write( -1, "e\n", 2);
    perror("");





}