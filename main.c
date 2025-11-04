#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"





int main(){

   
    // putnmbrbase
     char *str = "12";
    int ret = ft_putnbr_base(-55, str);
    printf(" \n%d\n%d\n", ret, (int) (str));
    perror("");




}