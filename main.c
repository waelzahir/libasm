#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"

void check_ptr(void *p)
{
    printf("whats here %d \n", (int)p);

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

int main(){
    t_list * first_node  = calloc(1, sizeof(t_list));

    char *s1 = "hello";
    char * s2 = "world"; 
    char * s3 = "mamak"; 

    first_node->data = s1;
    ft_list_push_front(&first_node, s2);
    // int size = ft_list_size(first_node);
    // printf("%d \n", size);
    ft_list_push_front(&first_node, s3);
        ft_list_push_front(&first_node, s3);
            ft_list_push_front(&first_node, s3);
    ft_list_push_front(&first_node, s3);
    ft_list_push_front(&first_node, s3);
    ft_list_push_front(&first_node, s3);

    int size = ft_list_size(first_node);
    printf("%d \n", size);

    
    travers_list((t_list **)(&first_node));
    

}




