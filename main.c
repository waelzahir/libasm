#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "headers/libasm.h"

// void check_ptr(void *p)
// {
//     printf("whats here %p \n", p);

// }


// int testFunc()
// {
//     printf("mamak\n");
//     return 2;
// }
// int ft_list_sort(t_list **begin_list, int (*cmp)()){
//     t_list **head = begin_list;
//     t_list *first = *(begin_list);
//     t_list *second = NULL;
//     int it = 0;
//     if (!first)
//         return 1;
//     second = first->next;
//     if (!second)
//         return 1;
//     printf("here > \n");
//     while(1)
//     {
//         // if (cmp(first->data, second->data))
//         //     node_swap(begin_list, it, first,)
//         printf("%s %s %s   itertion %d \n", (*head)->data , first->data,second->data, it );
//         head = &first->next;
//         first = second;
//         second = second->next;
//         if (!second)
//             break;
//     }
//     return 1;
// }
// int main(){
//     t_list * first_node  = calloc(1, sizeof(t_list));
//     t_list * second_node  = calloc(1, sizeof(t_list));
//     t_list * third_node  = calloc(1, sizeof(t_list));
//     t_list * fourth_node  = calloc(1, sizeof(t_list));


//     char *s1 = "hello";
//     char * s2 = "world"; 
//     char * s3 = "mamak"; 
//     char *s4 = "mamamamm";

//     first_node->data = s1;
//     first_node->next = second_node;
//     second_node-> data = s2;
//     second_node->next = third_node;
//     third_node->data = s3;
//     third_node->next = NULL;

   
//    ft_list_sort(&first_node, NULL);    
// }






\
\
\
\
\
\
\
\
// void travers_list(t_list **head)
// {
//     t_list * h = (*head);
//     while(h)
//     {
//         printf("text in node: %s  \n",  h->data);
//         h = h->next;
//         printf("%p\n", h);
//     }
// }
#include <time.h>


void travers_list(t_list **head)
{
    t_list * h = (*head);
    while(h)
    {
        printf("text in node: %s  \n",  h->data);
        h = h->next;
    }
}

void freefunc(void *p){
    printf("freed the data in node %s\n", p);
}
int main(){

    t_list * node  = calloc(1, sizeof(t_list));

    char *s1 = "da";
    char *s2 = "ga";
    char *s3 = "ba";
    char *s4 = "ba";
    char *s5 = "vca";
    char *s6 = "vcca";
    char *s7 = "ba";
    char *s8 = "zda";
    char *s9 = "dfbfa";
    char *s10 = "dbfa";
    char *s11 = "dbfda";




    node->data = s1;
    ft_list_push_front(&node, s2);
    ft_list_push_front(&node, s3);
    ft_list_push_front(&node, s4);
    ft_list_push_front(&node, s5);
    ft_list_push_front(&node, s6);
    ft_list_push_front(&node, s7);
    ft_list_push_front(&node, s8);
    ft_list_push_front(&node, s9);
    ft_list_push_front(&node, s10);
    ft_list_push_front(&node, s11);

    printf("list before sorting\n");
    travers_list(&node);
    
    
    
    
    ft_list_sort(&node, (int (*)())&ft_strcmp);  
    printf("list after sorting\n");
    travers_list(&node);

    printf("deleting elements that have string \"s\" \n");
    printf("strcp test %d %d\n", strcmp("s","s"), ft_strcmp("s","s"));

    void *p = ft_list_remove_if(&node, "ba", (int (*)())&ft_strcmp , &freefunc);
    travers_list(&node);
    printf("%p, %p, %p, %s\n", p , &node, node, node->data);

    //  void *m = ft_list_remove_if(&node, "ga", (int (*)())&ft_strcmp , &freefunc);
    // travers_list(&node);
    // printf("%p, %p, %p, %p\n", m , &node, node, node->data);
}










