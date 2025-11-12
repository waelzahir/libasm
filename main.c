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



void travers_list(t_list **head)
{
    t_list * h = (*head);
    while(h)
    {
        printf("text in node: %s  \n",  h->data);
        h = h->next;
    }
}


int main(){
    t_list * n1  = calloc(1, sizeof(t_list));
    t_list * n2  = calloc(1, sizeof(t_list));
    t_list * n3  = calloc(1, sizeof(t_list));
    t_list * n4  = calloc(1, sizeof(t_list));
    t_list * n5  = calloc(1, sizeof(t_list));
    t_list * n6  = calloc(1, sizeof(t_list));
    t_list * n7  = calloc(1, sizeof(t_list));
    t_list * n8  = calloc(1, sizeof(t_list));
    t_list * n9  = calloc(1, sizeof(t_list));
    t_list * n10  = calloc(1, sizeof(t_list));



    char *s1 = "9";
    char * s2 = "8"; 
    char * s3 = "8"; 
    char *s4 = "2";
    char *s5 = "6";
    char * s6 = "9"; 
    char * s7 = "8"; 
    char *s8 = "2";
    char *s9 = "6";
    char * s10 = "9"; 


    n1->data = s1;
    n2->data = s2;
    n3->data = s3;
    n4->data = s4;
    n5->data = s5;
    n6->data = s6;
    n7->data = s7;
    n8->data = s8;
    n9->data = s9;
    n10->data = s10;
    
    n1->next = n2;
    n2->next = NULL;
    n3->next = NULL;
    n4->next = n5;
    n5->next = n6;
    n6->next = n7;
    n7->next = n8;
    n8->next = n9;
    n9->next = n10;
    n10->next = NULL;

   int ret = ft_list_sort(&n1, &ft_strcmp);    
   printf("%d %d \n", n1->data, ret);
   travers_list(&n1);

}









