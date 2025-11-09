#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"

void check_ptr(void *p)
{
    printf("whats here %p \n", p);

}

void travers_list(t_list **head)
{
    t_list * h = (*head);
    while(h)
    {
        printf("text in node: %s  \n",  h->data);
        h = h->next;
        printf("%p\n", h);
    }
}

int testFunc()
{
    printf("mamak\n");
    return 2;
}
int main(){
    t_list * first_node  = calloc(1, sizeof(t_list));

    char *s1 = "hello";
    char * s2 = "world"; 
    char * s3 = "mamak"; 

    first_node->data = s1;
   
   ft_list_sort(&first_node, &testFunc);    
}


void ft_list_sort(t_list **begin_list, int (*cmp)()){
    t_list **ptr = begin_list;
    

}




