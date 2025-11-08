#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"





int main(){

   
    // putnmbrbase
    char *str = "01";
    int ret = ft_putnbr_base(999999999, str);
    printf(" \n%d\n%d\n", ret, (int) (str));
    perror("");




}